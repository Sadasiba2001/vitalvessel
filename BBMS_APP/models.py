import re
import random
import string
import time
from django.db import models
from django.utils import timezone


#  *********************************************************************************************************************

#  ***********************************************- Main District IDs -*************************************************
class MainBloodBankSystem(models.Model):
    objects = None
    DoesNotExist = None
    district_id = models.CharField(max_length=50, primary_key=True)
    district_name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.district_id

    class Meta:
        db_table = 'MAIN_BLOODBANK_SYSTEM'


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class BloodBankRecord(models.Model):
    objects = None
    DoesNotExist = None
    blood_bank_id = models.CharField(max_length=50, primary_key=True)
    district = models.ForeignKey(MainBloodBankSystem, on_delete=models.CASCADE)
    blood_bank_name = models.CharField(max_length=100)
    address = models.CharField(max_length=200)
    mobile = models.CharField(max_length=13)
    email = models.EmailField(max_length=50)

    def __str__(self):
        return self.blood_bank_id

    def generate_unique_id(self):
        timestamp = str(int(time.time() * 1000))  # Current timestamp in milliseconds
        random_string = ''.join(random.choices(string.ascii_uppercase + string.digits, k=6))  # Random string
        return f'BANK-{timestamp}-{random_string}'

    def save(self, *args, **kwargs):
        if not self.blood_bank_id:
            self.blood_bank_id = self.generate_unique_id()
            while BloodBankRecord.objects.filter(blood_bank_id=self.blood_bank_id).exists():
                self.blood_bank_id = self.generate_unique_id()
        super().save(*args, **kwargs)

    class Meta:
        db_table = 'BLOODBANK_RECORD'


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class BloodGroupRecord(models.Model):
    DoesNotExist = None
    objects = None
    blood_group_id = models.CharField(max_length=10, primary_key=True)
    blood_group_name = models.CharField(max_length=11)
    donated_blood_to = models.CharField(max_length=255)
    received_blood_from = models.CharField(max_length=255)

    def __str__(self):
        return self.blood_group_id

    class Meta:
        db_table = 'BLOOD_GROUP'


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class BloodBankStockRecord(models.Model):
    objects = None
    record_id = models.AutoField(primary_key=True)
    district = models.ForeignKey('MainBloodBankSystem', on_delete=models.CASCADE)
    blood_bank = models.ForeignKey('BloodBankRecord', on_delete=models.CASCADE)
    blood_group = models.ForeignKey('BloodGroupRecord', on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0)

    def __str__(self):
        return f"Record ID: {self.record_id}"

    class Meta:
        db_table = 'BLOOD_BANK'

#  *********************************************************************************************************************

#  *********************************************************************************************************************
class DoctorDetails(models.Model):
    DoesNotExist = None
    objects = None
    doctor_id = models.CharField(max_length=10, primary_key=True)
    name = models.CharField(max_length=100)
    gender = models.CharField(max_length=6)
    specialization = models.CharField(max_length=50)
    email = models.EmailField(max_length=100)
    phone = models.CharField(max_length=13)
    address = models.CharField(max_length=100)
    profile_photo = models.ImageField(upload_to='user_profile_photos/', null=True, blank=True)

    def __str__(self):
        return self.doctor_id

    def save(self, *args, **kwargs):
        if not self.doctor_id:
            last_doctor = DoctorDetails.objects.order_by('-doctor_id').first()
            if last_doctor:
                last_id = int(last_doctor.doctor_id[1:])  # Extract the numeric part of the last doctor_id
                new_id = 'D' + str(last_id + 1).zfill(4)  # Increment the numeric part and format with leading zeros
            else:
                new_id = 'D1001'  # If no doctors exist, start with D1001
            self.doctor_id = new_id
        super().save(*args, **kwargs)

    class Meta:
        db_table = 'DOCTOR_DETAILS'


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class CustomerDetails(models.Model):
    DoesNotExist = None
    objects = None
    name = models.CharField(max_length=150)
    email = models.EmailField(max_length=50, unique=True)
    phone = models.CharField(max_length=10, unique=True)
    gender = models.CharField(max_length=6)
    blood_group = models.CharField(max_length=3)
    profile_photo = models.ImageField(upload_to='user_profile_photos/', null=True, blank=True)
    user_id = models.CharField(max_length=100, primary_key=True)
    password = models.CharField(max_length=15)
    created = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.user_id

    def save(self, *args, **kwargs):
        if not self.user_id:
            # Extracting first 5 letters of email
            email_part = self.email[:5]
            # Extracting first 5 digits from phone
            phone_part = ''.join([char for char in self.phone if char.isdigit()])[:5]
            # Getting current date and month
            date_month_part = f"{str(self.created.day).zfill(2)}{str(self.created.month).zfill(2)}"
            # Getting serial number
            serial_number = CustomerDetails.objects.count() + 1
            # Combining all parts to form user_id
            self.user_id = f"{email_part}{phone_part}{date_month_part}{serial_number}"
        super().save(*args, **kwargs)

    class Meta:
        db_table = 'CUSTOMER_DETAILS'


class CustomerLoginSession(models.Model):
    DoesNotExist = None
    objects = None
    session_id = models.CharField(primary_key=True, max_length=50, editable=False)
    user = models.ForeignKey(CustomerDetails, on_delete=models.CASCADE)
    login_time = models.DateTimeField(default=timezone.now)
    logout_time = models.DateTimeField(null=True, blank=True)

    def __str__(self):
        return f"{self.user.name}'s Login Session"

    def generate_session_id(self):
        timestamp = str(int(time.time()))  # Get current timestamp
        random_string = ''.join(random.choices(string.ascii_letters + string.digits, k=10))  # Generate a random string
        return timestamp + '_' + random_string

    def save(self, *args, **kwargs):
        if not self.pk:  # If the object is being created
            self.session_id = self.generate_session_id()  # Generate a new session ID
        super().save(*args, **kwargs)

    class Meta:
        db_table = 'CUSTOMER_LOGIN&LOGOUT'


class CustomerOrderDetails(models.Model):
    STATUS_CHOICES = [
        ('Pending', 'Pending'),
        ('Completed', 'Completed'),
        ('Failed', 'Failed'),
        # Add more status choices as needed
    ]
    objects = None
    order_id = models.CharField(primary_key=True, max_length=10)
    razorpay_order_id = models.CharField(max_length=255, default='')
    customer_id = models.ForeignKey(CustomerDetails, on_delete=models.CASCADE, default='')
    order_date = models.DateTimeField(default=timezone.now)
    name = models.CharField(max_length=50, null=False)
    email = models.EmailField(max_length=50, null=False)
    phone = models.CharField(max_length=13, null=False)
    blood_group = models.CharField(max_length=13, null=False, default='')
    packets = models.IntegerField(null=False, default=0)
    amount = models.IntegerField(null=False, default=0)
    district = models.CharField(max_length=10, null=False)
    address = models.CharField(max_length=100, null=False)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='Pending')

    def __str__(self):
        return self.order_id

    def save(self, *args, **kwargs):
        if not self.order_id:
            # Extracting date components
            date_str = str(self.order_date.day).zfill(2) + str(self.order_date.month).zfill(2)
            # Getting blood group
            blood_group_part = self.blood_group[:3]
            # Getting serial number
            serial_number = CustomerOrderDetails.objects.count() + 1
            # Combining all parts to form order_id
            self.order_id = f"{date_str}{blood_group_part}{serial_number:03d}"
        super().save(*args, **kwargs)


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class DonorDetails(models.Model):
    DoesNotExist = None
    objects = None
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    email = models.EmailField(max_length=50)
    gender = models.CharField(max_length=10)
    blood_group = models.CharField(max_length=4)
    district = models.CharField(max_length=15)
    address = models.CharField(max_length=500)
    profile_photo = models.ImageField(upload_to='donor_profile_photos/', null=True, blank=True)
    donor_id = models.CharField(max_length=20, primary_key=True)
    password = models.CharField(max_length=15)
    created = models.DateTimeField(default=timezone.now, null=True)

    def __str__(self):
        return self.donor_id

    def generate_donor_id(self):
        donor_name_letters = self.name[:3].upper()
        email_prefix = re.match(r'^([^@]+)@', self.email).group(1).upper()
        phone_numbers = ''.join(filter(str.isdigit, self.phone))[:3]
        district_letters = self.district[:3].upper()
        serial_number = DonorDetails.objects.count() + 1
        donor_id = f"{donor_name_letters}-{email_prefix}-{phone_numbers}-{district_letters}-{serial_number}"
        return donor_id

    def save(self, *args, **kwargs):
        # Set password to the same value as donor_id
        self.password = self.donor_id
        super().save(*args, **kwargs)

    class Meta:
        db_table = 'DONOR_DETAILS'


class DonorLoginSession(models.Model):
    objects = None
    session_number = models.AutoField(primary_key=True)  # Automatically generated session number
    user = models.ForeignKey(DonorDetails, on_delete=models.CASCADE)
    login_time = models.DateTimeField(default=timezone.now)
    logout_time = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return f"{self.user.name}'s Login Session"

    class Meta:
        db_table = 'DONOR_LOGIN&LOGOUT'


class BloodDonation(models.Model):
    objects = None
    donation_id = models.AutoField(primary_key=True)
    donor_id = models.ForeignKey(DonorDetails, on_delete=models.CASCADE)
    doctor_id = models.ForeignKey(DoctorDetails, on_delete=models.CASCADE)
    quantity = models.CharField(max_length=7)
    district = models.CharField(max_length=10)
    address = models.CharField(max_length=100)
    donation_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.donation_id

    class Meta:
        db_table = 'BLOOD_DONATION_RECORDS'

#  *********************************************************************************************************************
