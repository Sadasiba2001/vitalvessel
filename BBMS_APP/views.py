import razorpay
from BBMS_APP.models import *
from django.contrib import messages
from django.core.mail import send_mail
from django.contrib.auth.models import User
from django.shortcuts import render, redirect, get_object_or_404
from django.views.decorators.csrf import csrf_protect
from django.http import HttpResponse, HttpResponseBadRequest
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.hashers import make_password, check_password

# **************************************************************** INDEX PAGE **********************************************************************

# Index box function built here
def index(request):
    return render(request, 'BBMS_APP/main/index.html')
# Index box function building end here
# **************************************************************** INDEX PAGE END HERE **********************************************************************


# ***************************************************************** MAIN LOGIN FUNCTION ******************************************************************
# Main Login function
def mainLogin(request):
    if request.method == 'POST':
        user_type = request.POST.get('user_type', '')
        if user_type == 'admin':
            print("Admin type is choose")
            return adminLogin(request)
        elif user_type == 'donor':
            print("Donor type is choose")
            return donorLogin(request)
        elif user_type == 'user':
            print("User type is choose")
            return customerLogin(request)
        else:
            messages.error(request, "Invalid user type.", extra_tags='user_login_error')
            return redirect('login')
    return render(request, 'BBMS_APP/main/login.html')
# Main Login function end here
# ***************************************************************** MAIN LOGIN FUNCTION END HERE ******************************************************************


# ************************************************** CODE FOR CUSTOMER PAGE *********************************************************************************
# Customer registration form
def customerRegister(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        user_email = request.POST.get('email')
        user_phone = request.POST.get('number')
        user_gender = request.POST.get('gender')
        user_blood_group = request.POST.get('blood_group')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')
        profile_photo = request.FILES.get('profilePhoto')

        user_records = CustomerDetails.objects.all()  # Fetching all the records from 'Customer' model
        email_exist = 'False'
        phone_exist = 'False'
        for db_email in user_records:
            if db_email.email == user_email:
                email_exist = 'True'
                break
        for db_phone in user_records:
            if db_phone.phone == user_phone:
                phone_exist = 'True'
                break
        if email_exist == 'True':
            messages.error(request, f"Email already exists.", extra_tags='email_error')
            return redirect('userRegister')
        elif phone_exist == 'True':
            messages.error(request, f"Phone number already exists.", extra_tags='phone_error')
            return redirect('userRegister')
        elif password1 != password2:
            messages.error(request, f"Password not same", extra_tags='password_error')
            return redirect('userRegister')
        elif not profile_photo:
            messages.error(request, f"Profile photo is required.", extra_tags='profile_photo_error')
            return redirect('userRegister')
        else:
            records = CustomerDetails(
                name=name,
                email=user_email,
                phone=user_phone,
                gender=user_gender,
                blood_group=user_blood_group,
                password=password2,
            )
            records.profile_photo.save(profile_photo.name, profile_photo)
            records.save()
            messages.success(request, f"successfully records submitted...", extra_tags='success_message')
            send_mail(
                'Registered Successfully',
                f'Hello {name}, you successfully registered into our VITALVESSEL website',  # message
                'vital.company.vessel@gmail.com',
                [user_email],
                fail_silently=False,
            )
            return redirect('userRegister')
    return render(request, 'BBMS_APP/main/register.html')

# Customer login code
def customerLogin(request):
    if request.method == 'POST':
        user_email = request.POST.get('username')
        user_password = request.POST.get('password')
        print(f"{user_email}, {user_password}")
        try:
            # Normal user login logic
            normal_user = CustomerDetails.objects.get(email=user_email)
            if normal_user.password == user_password:
                # Normal user login successful
                # Create a LoginSession record to store login information
                login_session_instance = CustomerLoginSession(user=normal_user)
                login_session_instance.save()
                # Set a session variable to mark the user as logged in
                request.session['user_id'] = normal_user.user_id
                return redirect('Home')
            else:
                messages.error(request, "Password doesn't match.", extra_tags='password_login_error')
                return redirect('Login')
        except ObjectDoesNotExist:
            messages.error(request, f"User with email {user_email} doesn't exist", extra_tags='user_login_error')
            return redirect('Login')
    return render(request, 'BBMS_APP/main/login.html')
# Customer login code end here

# Customer blood order code
def customerBloodOrder(request):
    order_id = None
    district = MainBloodBankSystem.objects.all()
    blood_group = BloodGroupRecord.objects.all()
    records = {
        'districts': district,
        'bloods': blood_group,
    }
    try:
        customer_id = request.session.get('user_id')
        if customer_id:
            customer = CustomerDetails.objects.get(user_id=customer_id)
            if request.method == "POST":
                user_name = request.POST.get('name')
                user_email = request.POST.get('email')
                user_phone = request.POST.get('phone')
                user_blood_group = request.POST.get('blood_group')
                no_packets = request.POST.get('blood_bag')
                price = int(request.POST.get('price')) * 100  # Amount in paise for Razorpay
                user_district = request.POST.get('district')
                user_address = request.POST.get('address')
                # Creating Razorpay client
                client = razorpay.Client(auth=('rzp_test_3vxkeO85rNjAVv', 'wCCPcKi65WGjo4FGfpQkHRLe'))
                # Creating the Razorpay order
                response_payment = client.order.create(dict(amount=price, currency='INR'))
                order_id = response_payment['id']  # Get the Razorpay order ID
                # Save order details to your database with Razorpay order ID
                order = CustomerOrderDetails.objects.create(
                    customer_id=customer,
                    name=user_name,
                    email=user_email,
                    phone=user_phone,
                    blood_group=user_blood_group,
                    packets=no_packets,
                    amount=price,
                    district=user_district,
                    address=user_address,
                    razorpay_order_id=order_id  # Assign Razorpay order ID here
                )
                order.save()
                print(f"Razorpay order id: {order_id}")
                # Redirecting user to Razorpay checkout page
                return redirect('razorpay_checkout', order_id=order_id)
    except CustomerDetails.DoesNotExist:
        return HttpResponseBadRequest("The User ID doesn't exist")
    return render(request, 'BBMS_APP/for_all_blood_order.html', records)

# CUSTOMER Profile code
def customerProfile(request):
    print('Profile page accessed')
    print('Getting the user ID')
    user_id = request.session.get('user_id')  # Retrieve user ID from session
    user_data = {}
    print(f"The user id is {user_id}.")
    if user_id:
        # Fetch user details if user is logged in
        try:
            user = CustomerDetails.objects.get(user_id=user_id)
            order_data = CustomerOrderDetails.objects.all()
            user_data = {
                'user_name': user.name,
                'user_email': user.email,
                'user_phone': user.phone,
                'user_photo': user.profile_photo.url if user.profile_photo else None,
                'order': order_data,
            }
            print("Profile details displaying section executed.")
        except CustomerDetails.DoesNotExist:
            messages.error(request, "User details not found", extra_tags="user_details_not_found")
            return redirect('CustomerLogin')  # Redirect to log in if user details not found
    else:
        messages.error(request, "You are not logged in.", extra_tags="user_not_logged_in")
        return redirect('CustomerLogin')  # Redirect to log in if user is not logged in
    return render(request, 'BBMS_APP/for_all_profile.html', user_data)

# Customer logout code here
def customerLogout(request):
    if request.method == 'POST':
        user_id = request.session.get('user_id')
        if user_id:
            try:
                # Retrieve the session ID based on the user ID
                session_id = CustomerLoginSession.objects.get(user_id=user_id, logout_time__isnull=True).session_id
                # Retrieve the active login session based on the session ID
                active_session = CustomerLoginSession.objects.get(session_id=session_id)
                # Mark the logout time for the active session
                active_session.logout_time = timezone.now()
                active_session.save()  # Save the changes to the session object
                # Remove user ID from session to mark user as logged out
                del request.session['user_id']
            except CustomerLoginSession.DoesNotExist:
                pass
        else:
            pass
    return redirect('index')  # Redirect to login page after logout
# ************************************************** CODE FOR CUSTOMER PAGE END HERE *********************************************************************************


# ************************************************** CODE FOR RAZOR PAY *********************************************************************************

# View to handle Razorpay checkout
def razorpay_checkout(request, order_id):
    print('Razorpay checkout page accessing')
    # Fetch the Razorpay order ID from the URL
    razorpay_order_id = order_id
    print(f'The razorpay checkout page order_id {razorpay_order_id}')
    # Fetch the corresponding order details from your database using Razorpay order ID
    razorpay_order = CustomerOrderDetails.objects.get(razorpay_order_id=razorpay_order_id)
    # Render Razorpay checkout template with order details
    order_details = CustomerOrderDetails.objects.all()
    records = {'razorpay_order': razorpay_order, 'details': order_details}
    return render(request, 'BBMS_APP/razorpay-checkout.html', records)

# View to handle Razorpay payment success callback
def razorpay_success(request):
    print('Razorpay success page accessing')
    # Get the Razorpay order ID from the query parameters
    razorpay_order_id = request.GET.get('razorpay_order_id')
    print(f"the razorpay orderid is {razorpay_order_id}")
    # Fetch the corresponding order from your database using Razorpay order ID
    razorpay_order = get_object_or_404(CustomerOrderDetails, razorpay_order_id=razorpay_order_id)
    print(f"the razorpay order {razorpay_order}")
    # Update order status to 'Completed' since payment was successful
    razorpay_order.status = 'Completed'
    razorpay_order.save()
    # Render success template
    return render(request, 'BBMS_APP/razorpay-success.html')


@csrf_protect
def razorpay_callback(request):
    if request.method == 'POST':
        # Retrieve the Razorpay payment ID and signature from the request
        razorpay_payment_id = request.POST.get('razorpay_payment_id')
        razorpay_signature = request.POST.get('razorpay_signature')
        print("Payment ID:", razorpay_payment_id)
        print("Signature:", razorpay_signature)

        # Verify the authenticity of the callback using the Razorpay SDK
        client = razorpay.Client(auth=('rzp_test_3vxkeO85rNjAVv', 'wCCPcKi65WGjo4FGfpQkHRLe'))
        params_dict = {
            'razorpay_payment_id': razorpay_payment_id,
            'razorpay_order_id': request.POST.get('razorpay_order_id'),
            'razorpay_signature': razorpay_signature
        }
        print("Params Dict:", params_dict)

        try:
            client.utility.verify_payment_signature(params_dict)
            # Payment signature is valid
            # Update payment status in your database
            # Perform necessary actions based on payment status
            print("Payment signature is valid")
            return HttpResponse(status=200)
        except razorpay.errors.SignatureVerificationError as e:
            # Payment signature is invalid
            # Handle the error appropriately (e.g., log it, return an error response)
            print("Signature verification error:", e)
            return HttpResponse(status=400)
    else:
        return HttpResponse(status=405)
# ************************************************** CODE FOR RAZOR PAY *********************************************************************************


# ********************************************************** FOR ALL USERS *************************************************************************

# ***********************************************************************************************************************************
def mainHome(request):
    return render(request, 'BBMS_APP/for_all_home.html')

# ***********************************************************************************************************************************
def about(request):
    return render(request, 'BBMS_APP/for_all_about.html')

def team(request):
    return render(request, 'BBMS_APP/for_all_team.html')

def testimonials(request):
    return render(request, 'BBMS_APP/for_all_testimonials.html')

# ***********************************************************************************************************************************
def services(request):
    return render(request, 'BBMS_APP/for_all_services.html')

def doctorDetails(request):
    doctor = DoctorDetails.objects.all()
    records = {
        'doctors': doctor,
    }
    return render(request, 'BBMS_APP/for_all_doctordetails.html', records)

def bloodBankDetails(request):
    blood_bank = BloodBankRecord.objects.all()
    records = {
        'blood_banks': blood_bank,
    }
    return render(request, 'BBMS_APP/for_all_blood_bank_details.html', records)

def donorDetails(request):
    donor = DonorDetails.objects.all()
    records = {
        'donors': donor,
    }
    return render(request, 'BBMS_APP/for_all_donordetails.html', records)

def bloodRequest(request):
    return render(request, 'BBMS_APP/for_all_blood_request.html')

# ***********************************************************************************************************************************
def blog(request):
    return render(request, 'BBMS_APP/for_all_blog.html')

def blog_single(request):
    return render(request, 'BBMS_APP/for_all_blog_single.html')

# ***********************************************************************************************************************************
def contact(request):
    return render(request, 'BBMS_APP/for_all_contact.html')

# ***********************************************************************************************************************************
def portfolio(request):
    return render(request, 'BBMS_APP/for_all_portfolio.html')

def portfolio_details(request):
    return render(request, 'BBMS_APP/for_all_portfolio_details.html')

# ***********************************************************************************************************************************
def custom_404(request):
    print("Custom 404 view called")
    return render(request, 'BBMS_APP/404.html', status=404)
# ***********************************************************************************************************************************
def profile(request):
    return render(request, 'BBMS_APP/for_all_profile.html')

# ***********************************************************************************************************************************

# ********************************************************** FOR ALL USERS END HERE *************************************************************************


# ********************************************************** ADMIN LOGIN AND LOGOUT *************************************************************************
# Admin Login
def adminLogin(request):
    if request.method == 'POST':
        user_email = request.POST.get('username')
        user_password = request.POST.get('password')
        try:
            # Admin login logic
            user = authenticate(request, username=user_email, password=user_password)
            if user is not None and user.is_staff and user.is_superuser:
                # Admin login successful
                login(request, user)
                # Your logic for admin login
                return redirect('admin_home')
            else:
                messages.error(request, "Invalid credentials for admin login.", extra_tags='password_login_error')
                return redirect('login')
        except User.DoesNotExist:
            messages.error(request, f"Admin with username {user_email} doesn't exist", extra_tags='user_login_error')
            return redirect('login')
    return render(request, 'BBMS_APP/main/login.html')
# Admin Login end here

# Admin Logout
def adminLogout(request):
    logout(request)
    return redirect('index')
# Admin Logout end here
# ********************************************************** ADMIN LOGIN AND LOGOUT END HERE *************************************************************************

# *********************************************************** ADMIN HOME PAGE ************************************************************************
def adminHome(request):
    return render(request, 'BBMS_APP/admin/admin_home_page.html')
# ******************************************************* ADMIN HOME PAGE END HERE ***********************************************************************

# ******************************************************* ADMIN DISTRICT PAGE ***********************************************************************
# Admin district home page
def adminDistrictHomePage(request):
    return render(request, 'BBMS_APP/admin/district/admin_district_home_page.html')
# Admin district home page End

# Admin district register page
def adminDistrictRegisterPage(request):
    if request.method == 'POST':
        districtID = request.POST.get('district_id')
        districtNAME = request.POST.get('district_name')

        records = MainBloodBankSystem(district_id=districtID, district_name=districtNAME)
        records.save()

        messages.success(request, 'Record submitted successfully', extra_tags='record_submitted')
        return redirect('AdminDistrictRegisterPage')
    return render(request,'BBMS_APP/admin/district/admin_district_register_page.html')
# Admin district register page

# Admin district details page
def adminDistrictDetailsPage(request):
    district_details = MainBloodBankSystem.objects.all()
    record = {
        'details': district_details,
    }
    if 'delete' in request.POST:
        print("Delete button is clicked")
        selected_ids = request.POST.getlist('selected_records')
        try:
            for ids in selected_ids:
                print(ids)
                record = MainBloodBankSystem.objects.get(district_id=ids)
                record.delete()
            messages.success(request, "Record Delete Successfully", extra_tags="records_delete")
            return redirect('AdminDistrictDetailsPage')
        except MainBloodBankSystem.DoesNotExist:
            pass
    else:
        pass
    return render(request, 'BBMS_APP/admin/district/admin_district_details_page.html', record)
# Admin district details page end
# ******************************************************* ADMIN DISTRICT PAGE END HERE ***********************************************************************

# ******************************************************** ADMIN DONOR PAGE ***************************************************************************
# Donor home page
def adminDonorHomePage(request):
    return render(request, 'BBMS_APP/admin/donor/admin_donor_home_page.html')

# Donor registration form
def adminDonorRegisterPage(request):
    district = MainBloodBankSystem.objects.all()
    blood_group = BloodGroupRecord.objects.all()
    records = {
        'districts': district,
        'bloods': blood_group,
    }
    if request.method == 'POST':
        try:
            donor_name = request.POST.get('donor_name', None)
            donor_email = request.POST.get('donor_email', None)
            donor_number = request.POST.get('donor_number', None)
            donor_gender = request.POST.get('gender', None)
            donor_blood_group = request.POST.get('blood_group', None)
            donor_district = request.POST.get('district', None)
            donor_address = request.POST.get('address', None)
            profile_photo = request.FILES.get('profile_photo', None)
            print(f"{donor_name}, {donor_email}, {donor_number}, {donor_gender}")
            donorRecord = DonorDetails.objects.all()
            email_exist = 'False'
            phone_exist = 'False'
            for donorEmail in donorRecord:
                if donorEmail.email == donor_email:
                    email_exist = 'True'
                    break
            for donorNumber in donorRecord:
                if donorNumber.phone == donor_number:
                    phone_exist = 'True'
                    break
            if email_exist == 'True':
                messages.error(request, f"Email already exists.", extra_tags='email_not_exist_error')
                return redirect('admin_donorRegistrationForm')
            elif phone_exist == 'True':
                messages.error(request, f"Phone number already exists.", extra_tags='phone_not_exist_error')
                return redirect('admin_donorRegistrationForm')
            elif not profile_photo:
                messages.error(request, f"Profile photo is required.", extra_tags='profile_not_exist_error')
                return redirect('admin_donorRegistrationForm')
            else:
                donor_record = DonorDetails(
                    name=donor_name, email=donor_email, phone=donor_number, gender=donor_gender,
                    blood_group=donor_blood_group, district=donor_district, address=donor_address,
                )
                donor_record.profile_photo.save(profile_photo.name, profile_photo)
                donor_record.save()
                messages.success(request, f"Successfully records submitted...", extra_tags='success_message')

                # Sending confirmation email
                send_mail(
                    'Registered Successfully',
                    f'Hello {donor_name}, you successfully registered into our VITALVESSEL website as a donor',
                    'vital.company.vessel@gmail.com',
                    [donor_email],
                    fail_silently=False,
                )
                return redirect('admin_donorRegistrationForm')
        except Exception as e:
            messages.error(request, f"{e}", extra_tags='try_block_error')
            return redirect('admin_donorRegistrationForm')
    return render(request, 'BBMS_APP/admin/donor/admin_donor_registration_form_page.html', records)

# Donor login code
def donorLogin(request):
    if request.method == 'POST':
        user_id = request.POST.get('username')
        user_password = request.POST.get('password')
        try:
            # Donor login logic
            donor_user = DonorDetails.objects.get(donorid=user_id)
            if donor_user.password == user_password:
                # Donor login successful
                # Create a LoginSession record to store login information
                login_session_instance = DonorLoginSession(user=donor_user)
                login_session_instance.save()
                # Set a session variable to mark the user as logged in
                request.session['user_email'] = donor_user.email
                return redirect('home')
            else:
                messages.error(request, "Password doesn't match.", extra_tags='password_login_error')
                return redirect('login')
        except ObjectDoesNotExist:
            messages.error(request, f"Donor with email {user_id} doesn't exist", extra_tags='user_login_error')
            return redirect('login')
    return render(request, 'BBMS_APP/main/login.html')
# Donor login code end here

# Donor details record page
def adminDonorDetailsPage(request):
    if request.method == 'POST':
        print(request.POST)
        if 'delete' in request.POST:
            print("Delete button is clicked")
            selected_ids = request.POST.getlist('selected_records')
            try:
                for ids in selected_ids:
                    print(ids)
                    record = DonorDetails.objects.get(donor_id=ids)
                    record.delete()
                messages.success(request, "Record Delete Successfully", extra_tags="records_delete")
                return redirect('AdminDonorDetailsPage')
            except DonorDetails.DoesNotExist:
                pass
        else:
            return redirect('AdminDonorDetailsPage')
            pass
    donor_records = DonorDetails.objects.all()
    context = {
        'donors': donor_records,
    }
    return render(request, 'BBMS_APP/admin/donor/admin_donor_details_page.html', context)
# Donor details record page end here

# Donor record modification page
@login_required
def adminDonorDetailsModificationPage(request):
    donor_records = DonorDetails.objects.all()
    district = MainBloodBankSystem.objects.all()
    blood_group = BloodGroupRecord.objects.all()
    records = {
        'donors': donor_records,
        'districts': district,
        'bloods': blood_group,
    }
    if request.method == 'POST':
        donorID = request.POST.get('ID')
        donor_name = request.POST.get('name')
        donor_gender = request.POST.get('gender')
        donor_blood_group = request.POST.get('blood_group')
        donor_district = request.POST.get('district')
        donor_address = request.POST.get('address')
        donor_profile_photo = request.FILES.get('profile_photo')
        print(f"{donorID}, {donor_name}, {donor_gender}, {donor_blood_group}, {donor_district}")
        try:
            if donor_name != '':
                DonorDetails.objects.filter(donor_id=donorID).update(name=donor_name)
            if donor_gender != '':
                DonorDetails.objects.filter(donor_id=donorID).update(gender=donor_gender)
            if donor_blood_group != '':
                DonorDetails.objects.filter(donor_id=donorID).update(blood_group=donor_blood_group)
            if donor_district != '':
                DonorDetails.objects.filter(donor_id=donorID).update(district=donor_district)
            if donor_address != '':
                DonorDetails.objects.filter(donor_id=donorID).update(address=donor_address)
            if donor_profile_photo != '':
                DonorDetails.objects.filter(donor_id=donorID).update(profile_photo=donor_profile_photo)
            messages.success(request, "Records updated successfully", extra_tags='records_update')
        except Exception as e:
            messages.error(request, f"{e}", extra_tags='error_occur')
        return redirect('adminDonorDetailsModification')
    return render(request, 'BBMS_APP/admin/donor/admin_donor_details_modification_page.html', records)
# Donor record modification page end here

# Donor blood donation registration page
def adminDonorBloodDonationRegisterPage(request):
    if request.method == 'POST':
        donorId = request.POST.get('donor_ID')
        doctorId = request.POST.get('doctor_ID')
        bloodAmount = request.POST.get('blood_amount')
        campDistrict = request.POST.get('district')
        campAddress = request.POST.get('address')
        # Data Storing into model block
        try:
            donor = DonorDetails.objects.get(donor_id=donorId)
            doctor = DoctorDetails.objects.get(doctor_id=doctorId)
            donation_details = BloodDonation(
                donor_id=donor,
                doctor_id=doctor,
                quantity=bloodAmount,
                district=campDistrict,
                address=campAddress
            )
            donation_details.save()
        except Exception as e:
            print(f"{e}")
            pass
        return redirect('AdminDonorBloodDonationRegisterPage')
    donor_records = DonorDetails.objects.all()
    doctor_records = DoctorDetails.objects.all()
    district = MainBloodBankSystem.objects.all()
    donation_records = BloodDonation.objects.all()
    context = {
        'donors': donor_records,
        'doctors': doctor_records,
        'districts': district,
        'donation': donation_records,
    }
    return render(request, 'BBMS_APP/admin/donor/admin_donor_blood_donation_register_page.html', context)
# Donor blood donation registration page end here
# ******************************************************** ADMIN DONOR PAGE END HERE ***************************************************************************


# ******************************************************** ADMIN DOCTOR PAGE ***************************************************************************
# ADMIN DOCTOR HOME PAGE
def adminDoctorHomePage(request):
    return render(request, 'BBMS_APP/admin/doctor/admin_doctor_home_page.html')
# ADMIN DOCTOR HOME PAGE END HERE

# ADMIN DOCTOR REGISTER PAGE
def adminDoctorRegisterPage(request):
    if request.method == 'POST':
        doctor_name = request.POST.get('doctor_name')
        doctor_email = request.POST.get('email')
        doctor_phone = request.POST.get('number')
        doctor_gender = request.POST.get('gender')
        doctor_designation = request.POST.get('designation')
        doctor_address = request.POST.get('address')
        profile_photo = request.FILES.get('profile_photo')
        records = DoctorDetails(
            name=doctor_name,
            email=doctor_email,
            phone=doctor_phone,
            gender=doctor_gender,
            specialization=doctor_designation,
            address=doctor_address,
        )
        records.profile_photo.save(profile_photo.name, profile_photo)
        records.save()
        messages.success(request, 'Records Submitted Successfully', extra_tags='record_submitted')
        return redirect('doctorRegisterPage')
    return render(request, 'BBMS_APP/admin/doctor/admin_doctor_register_page.html')
# ADMIN DOCTOR REGISTER PAGE END HERE

# ADMIN DOCTOR DETAILS PAGE
def adminDoctorDetailsPage(request):
    doctor_records = DoctorDetails.objects.all()
    records = {
        'doctors': doctor_records,
    }
    if request.method == 'POST':
        if 'delete' in request.POST:
            selected_ids = request.POST.getlist('selected_records')
            try:
                for ids in selected_ids:
                    print(ids)
                    record = DoctorDetails.objects.get(doctor_id=ids)
                    record.delete()
                messages.success(request, "Record Delete Successfully", extra_tags="records_delete")
                return redirect('doctorDetailsDetailsPage')
            except CustomerDetails.DoesNotExist:
                pass
        else:
            return redirect('doctorDetailsDetailsPage')
            pass
    return render(request, 'BBMS_APP/admin/doctor/admin_doctor_details_details_page.html', records)
# ADMIN DOCTOR DETAILS PAGE END HERE

# ADMIN DOCTOR DETAILS MODIFICATION PAGE
def doctorDetailsModificationPage(request):
    doctor_records = DoctorDetails.objects.all()
    records = {
        'doctors': doctor_records,
    }
    if request.method == 'POST':
        doctorID = request.POST.get('ID')
        doctor_name = request.POST.get('name')
        doctor_gender = request.POST.get('gender')
        doctor_designation = request.POST.get('designation')
        doctor_address = request.POST.get('address')
        profile_photo = request.FILES.get('profile_photo')
        try:
            if doctor_name != '':
                DoctorDetails.objects.filter(doctor_id=doctorID).update(name=doctor_name)
            if doctor_gender != '':
                DoctorDetails.objects.filter(doctor_id=doctorID).update(gender=doctor_gender)
            if doctor_designation != '':
                DoctorDetails.objects.filter(doctor_id=doctorID).update(specialization=doctor_designation)
            if doctor_address != '':
                DoctorDetails.objects.filter(doctor_id=doctorID).update(address=doctor_address)
            if profile_photo != '':
                DoctorDetails.objects.filter(doctor_id=doctorID).update(profile_photo=profile_photo)
            messages.success(request, "Records updated successfully", extra_tags='records_update')
        except Exception as e:
            messages.error(request, f"{e}", extra_tags='error_occur')
        return redirect('doctorDetailsModificationPage')
    return render(request, 'BBMS_APP/admin/doctor/admin_doctor_details_modification_page.html', records)
# ADMIN DOCTOR DETAILS MODIFICATION PAGE END HERE
# ******************************************************** ADMIN DOCTOR PAGE END HERE ***************************************************************************

# ******************************************************** ADMIN BLOOD PAGE *******************************************************************************************
# ADMIN BLOOD HOME PAGE
def adminBloodHomePage(request):
    return render(request, 'BBMS_APP/admin/blood/admin_blood_home_page.html')
# ADMIN BLOOD HOME PAGE END HERE

# ADMIN BLOOD GROUP REGISTER PAGE
def adminBloodGroupPage(request):
    if request.method == "POST":
        groupID = request.POST.get('blood_group_id')
        groupNAME = request.POST.get('blood_group_name')
        groupTO = request.POST.get('donate_to')
        groupFROM = request.POST.get('received_from')

        details = BloodGroupRecord(
            blood_group_id=groupID,
            blood_group_name=groupNAME,
            donated_blood_to=groupTO,
            received_blood_from=groupFROM,
        )
        details.save()
        messages.success(request, 'Records saved successfully', extra_tags='records_saved')
        return redirect('AdminBloodGroupPage')
    return render(request, 'BBMS_APP/admin/blood/admin_blood_group_page.html')
# ADMIN BLOOD GROUP REGISTER PAGE END HERE

# ADMIN BLOOD GROUP DETAILS PAGE
def adminBloodGroupDetailsPage(request):
    details = BloodGroupRecord.objects.all()
    record = {'detail': details, }
    return render(request, 'BBMS_APP/admin/blood/admin_blood_group_details_page.html', record)
# ADMIN BLOOD GROUP DETAILS PAGE END HERE

# ADMIN BLOOD STOCK DETAILS PAGE
def adminBloodStockDetails(request):
    # Fetch all BloodBankStockRecord Details
    blood_stock_records = BloodBankStockRecord.objects.all()
    # Extract unique district names and blood bank names
    unique_districts = blood_stock_records.values_list('district__district_name', flat=True).distinct()
    unique_blood_banks = blood_stock_records.values_list('blood_bank__blood_bank_name', flat=True).distinct()
    data = {
        'records': blood_stock_records,
        'unique_districts': unique_districts,
        'unique_blood_banks': unique_blood_banks,
    }
    return render(request, 'BBMS_APP/admin/blood/admin_bloodstock_page.html', data)
# ADMIN BLOOD STOCK DETAILS PAGE

# ******************************************************** ADMIN BLOOD PAGE END HERE *******************************************************************************************

# ******************************************************** ADMIN USER PAGE ***************************************************************************
@login_required
def adminUserHomePage(request):
    return render(request, 'BBMS_APP/admin/user/admin_user_home_page.html')


@login_required
def adminUserDetailsPage(request):
    customer_records = CustomerDetails.objects.all()
    records = {
        'customers': customer_records,
    }
    if request.method == 'POST':
        if 'delete' in request.POST:
            selected_ids = request.POST.getlist('selected_records')
            try:
                for ids in selected_ids:
                    print(ids)
                    record = CustomerDetails.objects.get(user_id=ids)
                    record.delete()
                messages.success(request, "Record Delete Successfully", extra_tags="records_delete")
                return redirect('adminUserDetailsDetails')
            except CustomerDetails.DoesNotExist:
                pass
        else:
            return redirect('adminUserDetailsDetails')
            pass
    return render(request, 'BBMS_APP/admin/user/admin_user_details_page.html', records)


# ********************************************************** ADMIN USER PAGE END HERE ***********************************************************************

# ********************************************************** ADMIN BLOOD BANK PAGE ***********************************************************
# ADMIN BLOODBANK HOME PAGE
def adminBloodBankHomePage(request):
    return render(request, 'BBMS_APP/admin/blood bank/admin_blood_bank_home_page.html')
# ADMIN BLOODBANK HOME PAGE END HERE

# ADMIN BLOOD BANK REGISTER PAGE
def adminBloodBankRegisterPage(request):
    if request.method == "POST":
        blood_bank_name = request.POST.get('bloodbank_name')
        districtName = request.POST.get('district_name')
        email = request.POST.get('email_id')
        mobile_no = request.POST.get('phone')
        b_address = request.POST.get('address')

        district_obj = MainBloodBankSystem.objects.filter(district_name=districtName).first()
        if district_obj:
            data = BloodBankRecord.objects.create(
                blood_bank_name=blood_bank_name,
                district=district_obj,
                address=b_address,
                mobile=mobile_no,
                email=email
            )
        return redirect('AdminBloodBankRegisterPage')

    district = MainBloodBankSystem.objects.all()
    records = {
        'districts': district,
    }
    return render(request, 'BBMS_APP/admin/blood bank/admin_blood_bank_register_page.html', records)
# ADMIN BLOOD BANK REGISTER PAGE END HERE

# ADMIN BLOODBANK DETAILS PAGE
def adminBloodBankDetailsPage(request):
    bloodbank_records = BloodBankRecord.objects.all()
    records = {
        'blood': bloodbank_records,
    }
    if request.method == 'POST':
        if 'delete' in request.POST:
            selected_ids = request.POST.getlist('selected_records')
            try:
                for ids in selected_ids:
                    print(ids)
                    record = BloodBankRecord.objects.get(blood_bank_id=ids)
                    record.delete()
                messages.success(request, "Record Delete Successfully", extra_tags="records_delete")
                return redirect('AdminBloodBankDetailsPage')
            except CustomerDetails.DoesNotExist:
                pass
        else:
            return redirect('AdminBloodBankDetailsPage')
            pass
    return render(request, 'BBMS_APP/admin/blood bank/admin_blood_bank_details_page.html',records)
# ADMIN BLOODBANK DETAILS PAGE END HERE

# ADMIN BLOODBANK MODIFICATION PAGE
def adminBloodBankModificationPage(request):
    blood_bank_records = BloodBankRecord.objects.all()
    district = MainBloodBankSystem.objects.all()
    records = {
        'ids': blood_bank_records,
        'districts': district,
    }
    if request.method == 'POST':
        id = ''
        bloodBankID = request.POST.get('ID')
        bloodBank_name = request.POST.get('name')
        districtName = request.POST.get('districtname')
        phoneNumber = request.POST.get('phonenumber')
        email = request.POST.get('emailid')
        address = request.FILES.get('address')
        district_obj = MainBloodBankSystem.objects.filter(district_name=districtName).first()
        if district_obj:
            id = district_obj
        try:
            if bloodBank_name != '':
                BloodBankRecord.objects.filter(blood_bank_id=bloodBankID).update(blood_bank_name=bloodBank_name)
            if id != '':
                BloodBankRecord.objects.filter(blood_bank_id=bloodBankID).update(district=id)
            if phoneNumber != '':
                BloodBankRecord.objects.filter(blood_bank_id=bloodBankID).update(mobile=phoneNumber)
            if email != '':
                BloodBankRecord.objects.filter(blood_bank_id=bloodBankID).update(email=email)
            if address != '':
                BloodBankRecord.objects.filter(blood_bank_id=bloodBankID).update(address=address)
            messages.success(request, "Records updated successfully", extra_tags='records_update')
        except Exception as e:
            messages.error(request, f"{e}", extra_tags='error_occur')
        return redirect('AdminBloodBankModificationPage')
    return render(request, 'BBMS_APP/admin/blood bank/admin_blood_bank_modification_page.html', records)
# ADMIN BLOODBANK MODIFICATION PAGE END HERE

# ********************************************************** ADMIN BLOOD BANK PAGE ***********************************************************






