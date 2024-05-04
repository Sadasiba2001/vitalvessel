from django.contrib import admin
from BBMS_APP.models import *

#  *********************************************************************************************************************
class MainBloodBankSystemAdmin(admin.ModelAdmin):
    list_display = ('district_id', 'district_name')
    fieldsets = (
        ('District Information', {
            'fields': ('district_id', 'district_name')
        }),
    )


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class BloodBankRecordAdmin(admin.ModelAdmin):
    list_display = ('blood_bank_id', 'blood_bank_name', 'district', 'address', 'mobile', 'email')
    fieldsets = (
        ('Blood Bank Information', {
            'fields': ('blood_bank_id', 'district', 'blood_bank_name', 'address')
        }),
        ('Contact Information', {
            'fields': ('mobile', 'email')
        }),
    )
#  *********************************************************************************************************************

#  *********************************************************************************************************************
class BloodGroupRecordAdmin(admin.ModelAdmin):
    list_display = ('blood_group_id', 'blood_group_name', 'donated_blood_to', 'received_blood_from')
    fieldsets = (
        ('Blood Group Information', {
            'fields': ('blood_group_id', 'blood_group_name')
        }),
        ('Donate & Receive', {
            'fields': ('donated_blood_to', 'received_blood_from')
        }),
    )
#  *********************************************************************************************************************

#  *********************************************************************************************************************
class BloodBankStockRecordAdmin(admin.ModelAdmin):
    list_display = ('record_id', 'district', 'blood_bank', 'blood_group', 'quantity')
    fieldsets = (
        ('Blood Information', {
            'fields': ('district', 'blood_bank', 'blood_group',)
        }),
        ('Stock Details', {
            'fields': ('record_id', 'quantity',)
        }),
    )

#  *********************************************************************************************************************

#  *********************************************************************************************************************
class DoctorDetailsAdmin(admin.ModelAdmin):
    list_display = ('doctor_id', 'name', 'gender', 'specialization', 'email', 'phone', 'address')
    fieldsets = (
        ('Personal Information', {
            'fields': ('doctor_id', 'name', 'gender', 'specialization')
        }),
        ('Contact Information', {
            'fields': ('email', 'phone', 'address')
        }),
    )


#  *********************************************************************************************************************

#  *********************************************************************************************************************
class CustomerDetailsAdmin(admin.ModelAdmin):
    list_display = ('email', 'name', 'phone', 'blood_group', 'profile_photo', 'created', 'gender', 'password')
    fieldsets = (
        ('Authentication Information', {
            'fields': ('email', 'password')
        }),
        ('Personal Information', {
            'fields': ('name', 'phone', 'gender', 'blood_group', 'profile_photo', 'created')
        }),
    )


class CustomerLoginSessionAdmin(admin.ModelAdmin):
    list_display = ('user', 'login_time', 'logout_time')
    fieldsets = (
        ('Session Information', {
            'fields': ('user', 'login_time', 'logout_time')
        }),
    )


class CustomerOrderDetailsAdmin(admin.ModelAdmin):
    list_display = ('order_id', 'razorpay_order_id', 'customer_id', 'order_date', 'name', 'email', 'phone', 'blood_group', 'packets', 'amount', 'district', 'address', 'status')
    fieldsets = (
        ('Order Information', {
            'fields': ('order_id', 'razorpay_order_id', 'customer_id', 'order_date', 'status')
        }),
        ('Customer Details', {
            'fields': ('name', 'email', 'phone', 'blood_group', 'packets', 'amount', 'district', 'address')
        }),
    )

#  *********************************************************************************************************************

#  *********************************************************************************************************************
class DonorDetailsAdmin(admin.ModelAdmin):
    list_display = (
        'donor_id', 'name', 'gender', 'blood_group', 'email', 'phone', 'district', 'address', 'profile_photo',
        'created')
    fieldsets = (
        ('Login Information', {
            'fields': ('donor_id', 'password')
        }),
        ('Personal Information', {
            'fields': ('name', 'gender', 'blood_group', 'profile_photo', 'created')
        }),
        ('Contact Information', {
            'fields': ('email', 'phone', 'district', 'address')
        }),
    )


class DonorLoginSessionAdmin(admin.ModelAdmin):
    list_display = ('user', 'login_time', 'logout_time', 'session_number')
    fieldsets = (
        ('User Information', {
            'fields': ('session_number', 'user')
        }),
        ('Login Details', {
            'fields': ('login_time', 'logout_time')
        }),
    )


class BloodDonationAdmin(admin.ModelAdmin):
    list_display = ('donor_id', 'doctor_id', 'quantity', 'district', 'address', 'donation_date')
    fieldsets = (
        ('User IDs', {
            'fields': ('donor_id', 'doctor_id')
        }),
        ('Donation Details', {
            'fields': ('quantity', 'district', 'address', 'donation_date')
        })
    )
#  *********************************************************************************************************************


#  *********************************************************************************************************************
admin.site.register(MainBloodBankSystem, MainBloodBankSystemAdmin)
admin.site.register(BloodBankRecord, BloodBankRecordAdmin)
admin.site.register(BloodGroupRecord, BloodGroupRecordAdmin)
admin.site.register(BloodBankStockRecord, BloodBankStockRecordAdmin)
#  *********************************************************************************************************************
#  *********************************************************************************************************************
admin.site.register(DoctorDetails, DoctorDetailsAdmin)
#  *********************************************************************************************************************

#  *********************************************************************************************************************
admin.site.register(CustomerDetails, CustomerDetailsAdmin)
admin.site.register(CustomerLoginSession, CustomerLoginSessionAdmin)
admin.site.register(CustomerOrderDetails, CustomerOrderDetailsAdmin)
#  *********************************************************************************************************************

#  *********************************************************************************************************************
admin.site.register(DonorDetails, DonorDetailsAdmin)
admin.site.register(DonorLoginSession, DonorLoginSessionAdmin)
admin.site.register(BloodDonation, BloodDonationAdmin)
#  *********************************************************************************************************************
