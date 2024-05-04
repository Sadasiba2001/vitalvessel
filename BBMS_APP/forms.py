from django.contrib.auth.forms import AuthenticationForm
from django import forms
from .models import *


class UserDetailForm(forms.ModelForm):
    class Meta:
        model = customer
        fields = ['name', 'email', 'phone', 'gender', 'blood_group']
        labels = {
            'name': 'Name',
            'gender': 'Gender',
            'blood_group': 'Blood Group',
            'email': 'Email',
            'phone': 'Phone',
        }


class UserLoginSessionForm(forms.ModelForm):
    class Meta:
        model = customer_login_session
        fields = ['session_number', 'user', 'login_time', 'logout_time']
        labels = {
            'user': 'User',
            'login_time': 'Login Time',
            'logout_time': 'Logout Time',
        }

class DonorDetailForm(forms.ModelForm):
    class Meta:
        model = Donor_Details
        fields = ['donor_id', 'name', 'gender', 'blood_group', 'email', 'phone', 'district', 'address']
        labels = {
            'donor_id': 'Donor ID',
            'name': 'Donor Name',
            'gender': 'Gender',
            'blood_group': 'Blood Group',
            'email': 'Email',
            'phone': 'Phone',
            'district': 'District',
            'address': 'Address',
        }


class DonorLoginSessionForm(forms.ModelForm):
    class Meta:
        model = donor_login_session
        fields = ['session_number', 'user', 'login_time', 'logout_time']
        labels = {
            'user': 'User',
            'login_time': 'Login Time',
            'logout_time': 'Logout Time',
        }


class CustomAuthenticationForm(AuthenticationForm):
    is_donor = forms.BooleanField(required=False)


class BloodBankSystemForm(forms.ModelForm):
    class Meta:
        model = BloodBankSystem
        fields = ['district_id', 'district_name']
        labels = {
            'district_id': 'District ID',
            'district_name': 'District Name',
        }


class BloodBankDetailsForm(forms.ModelForm):
    class Meta:
        model = BloodBankDetails
        fields = ['blood_bank_id', 'blood_bank_name', 'district', 'address', 'mobile', 'email']
        labels = {
            'blood_bank_id': 'Blood_bank ID',
            'blood_bank_name': 'Blood_bank Name',
            'district': 'District',
            'address': 'Address',
            'mobile': 'Mobile',
            'email': 'Email',
        }


class BloodGroupDetailsForm(forms.ModelForm):
    class Meta:
        model = Blood_Group_Details
        fields = ['product_id', 'product_name', 'donated_blood_to', 'received_blood_from']
        labels = {
            'product_id': 'Product ID',
            'product_name': 'Product Name',
            'donated_blood_to': 'Donated Blood To',
            'received_blood_from': 'Received Blood From',
        }


class BloodStuckDetailsForm(forms.ModelForm):
    class Meta:
        model = Blood_Stuck_Details
        fields = ['blood_group', 'blood_bank', 'quantity', 'amount']
        labels = {
            'blood_group': 'Blood Group',
            'blood_bank': 'Blood_bank',
            'quantity': 'Quantity',
            'amount': 'Amount',
        }


class DoctorDetailsForm(forms.ModelForm):
    class Meta:
        model = Doctor_Details
        fields = ['doctor_id', 'd_name', 'gender', 'specialization', 'email', 'phone', 'address']
        labels = {
            'doctor_id': 'Doctor ID',
            'd_name': 'Doctor Name',
            'gender': 'Gender',
            'specialization': 'Specialization',
            'email': 'Email',
            'phone': 'Phone',
            'address': 'Address',
        }


