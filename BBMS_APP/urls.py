from django.urls import path
from BBMS_APP import views


urlpatterns = [
    # ************************** Without register *************************************
    path('login/', views.mainLogin, name='login'),
    path('donorLogin/', views.donorLogin, name='DonorLogin'),
    # ************************** Without register *************************************

    # ************************* For Customers ************************************************************************
    path('CustomerRegister/', views.customerRegister, name='CustomerRegister'),
    path('customerLogin/', views.customerLogin, name='Login'),
    path('customerBloodOrder/', views.customerBloodOrder, name='customerBloodOrder'),
    path('customerProfile/', views.customerProfile, name='Profile'),
    path('customerLogout/', views.customerLogout, name='CustomerLogout'),
    # ************************* For All Users ************************************************************************
    path('main-home/', views.mainHome, name='Home'),
    path('about/', views.about, name='about'),
    path('blog/', views.blog, name='blog'),
    path('blog_single/', views.blog_single, name='blog_single'),
    path('contact/', views.contact, name='contact'),
    path('portfolio/', views.portfolio, name='portfolio'),
    path('portfolio_details/', views.portfolio_details, name='portfolio_details'),
    path('services/', views.services, name='services'),
    path('team/', views.team, name='team'),
    path('testimonial/', views.testimonials, name='testimonials'),
    path('profile/', views.profile, name='profile'),
    path('bloodBankDetails/', views.bloodBankDetails, name='bloodBankDetails'),
    path('doctor_-_detail/', views.doctorDetails, name='doctor_details'),
    path('donor_-_details/', views.donorDetails, name='donor_details'),
    path('razorpay/checkout/<order_id>/', views.razorpay_checkout, name='razorpay_checkout'),
    path('razorpay/success/', views.razorpay_success, name='razorpay_success'),
    path('razorpay/callback/', views.razorpay_callback, name='razorpay_callback'),
    # ************************* For All Users ************************************************************************

    # ************************* For Admin usages ************************************************************************
    path('admin_-_home/', views.adminHome, name='admin_home'),
    path('admin_-_logout/', views.adminLogout, name='admin_logout'),
    # ****************************** Blood ***********************************************************************************
    path('admin_-_BloodHomePage', views.adminBloodHomePage, name='AdminBloodHomePage'),
    path('admin_-_BloodGroupPage', views.adminBloodGroupPage, name='AdminBloodGroupPage'),
    path('admin_-_BloodGroupDetailsPage', views.adminBloodGroupDetailsPage, name='AdminBloodGroupDetailsPage'),
    path('admin_-_bloodStockDetails/', views.adminBloodStockDetails, name='admin_bloodStockDetails'),
    # ****************************** District ***********************************************************************************
    path('admin_-_DistrictHomePage/', views.adminDistrictHomePage, name='AdminDistrictHomePage'),
    path('admin_-_DistrictRegisterPage/', views.adminDistrictRegisterPage, name='AdminDistrictRegisterPage'),
    path('admin_-_DistrictDetailsPage/', views.adminDistrictDetailsPage, name='AdminDistrictDetailsPage'),
    # ******************************** Doctor **********************************************************************************
    path('admin_-_DoctorHomePage/', views.adminDoctorHomePage, name='AdminDoctorHomePage'),
    path('admin_-_doctorRegisterPage/', views.adminDoctorRegisterPage, name='AdminDoctorRegisterPage'),
    path('admin_-_doctorDetailsPage/', views.adminDoctorDetailsPage, name='AdminDoctorDetailsPage'),
    path('admin_-_doctorDetailsModificationPage/', views.doctorDetailsModificationPage, name='AdminDoctorDetailsModificationPage'),
    # ********************************** Donor **********************************************************************************
    path('admin_-_DonorHomePage/', views.adminDonorHomePage, name='Admin_donorHomePage'),
    path('admin_-_DonorRegisterPage/', views.adminDonorRegisterPage, name='AdminDonorRegisterPage'),
    path('admin_-_DonordetailsPage/', views.adminDonorDetailsPage, name='AdminDonorDetailsPage'),
    path('admin_-_DonorDetailsModificationPage/', views.adminDonorDetailsModificationPage, name='AdminDonorDetailsModificationPage'),
    path('admin_-_DonorBloodDonationRegisterPage', views.adminDonorBloodDonationRegisterPage, name='AdminDonorBloodDonationRegisterPage'),
    # *********************************** User **********************************************************************************
    path('admin_-_UserHomePage/', views.adminUserHomePage, name='AdminUserHomePage'),
    path('admin_-_UserDetailsPage/', views.adminUserDetailsPage, name='AdminUserDetailsPage'),
    # ************************* Blood Bank  ************************************************************************
    path('admin_-_BloodBankHomePage/', views.adminBloodBankHomePage, name='AdminBloodBankHomePage'),
    path('admin_-_BloodBankRegisterPage/', views.adminBloodBankRegisterPage, name='AdminBloodBankRegisterPage'),
    path('admin_-_BloodBankDetailsPage/', views.adminBloodBankDetailsPage, name='AdminBloodBankDetailsPage'),
    path('admin_-_BloodBankModificationPage/', views.adminBloodBankModificationPage, name='AdminBloodBankModificationPage'),
    # ************************* For Admin usages ************************************************************************
]

# Define a handler for 404 errors
handler_404 = 'BBMS_APP.views.custom_404'
