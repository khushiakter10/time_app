
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:time_app/common_widget/custom_button.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/gen/assets.gen.dart';
import 'package:time_app/gen/colors.gen.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';
import 'package:time_app/helpers/ui_helpers.dart';

class CountryPickerScreen extends StatefulWidget {
  const CountryPickerScreen({super.key});

  @override
  State<CountryPickerScreen> createState() => _CountryPickerScreenState();
}

class _CountryPickerScreenState extends State<CountryPickerScreen> {
  final phoneNumberController = TextEditingController();
  String phoneNumber = "";
  String countryName = "USA";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assets.images.country.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.0.h,horizontal: 17.w),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      NavigationService.goBack();
                    },
                      child: Image.asset(Assets.icons.arew.path,height: 24.h)),
                  UIHelper.horizontalSpace(8.w),
                  Text("Forget Password?",style: TextFontStyle.c000000forget),
                ],
              ),
             UIHelper.verticalSpace(60.h),
             Row(
               children: [
                 Text("Enter Your Phone Number",style: TextFontStyle. c22252Denteryourphn)
               ],
             ),
              UIHelper.verticalSpace(25.h),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntlPhoneField(
                autofocus: true,
                showCountryFlag: true, // যদি ফ্ল্যাগ দেখাতে চান, তাহলে true রাখুন
                controller: phoneNumberController,
                decoration: InputDecoration(
                  fillColor: AppColors.cF9F9F9,
                  filled: true,
                  labelText: 'Phone Number',
                  labelStyle: TextFontStyle.cB3BAC5phonenumber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: AppColors.cECECEC),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: AppColors.cECECEC),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: AppColors.cECECEC),
                  ),
                ),
                dropdownIconPosition: IconPosition.trailing,
                initialCountryCode: 'US',
                onCountryChanged: (country) {
                  setState(() {
                    countryName = "USA";
                  });
                },
                onChanged: (phone) {
                  setState(() {
                    phoneNumber = phone.completeNumber;
                  });
                },
              ),
            ),




              UIHelper.verticalSpace(15.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("We’ll text you a code to verify you’re really you. Message",style: TextFontStyle.c5D5D5D),
                  Text("and data rates may apply.What happens if you number ",style: TextFontStyle.c5D5D5D),
                  Text("changes?",style: TextFontStyle.c5D5D5D)
                ],
              ),
              UIHelper.verticalSpace(90.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customeButton(
                    borderColor: Colors.transparent,
                    name: "Next",
                    onCallBack: () {
                      NavigationService.navigateTo(Routes.verificationScreen);
                    },
                    height: 48.h,
                    minWidth: 342,
                    borderRadius: 40.r,
                    color: AppColors.c1C1F5E,
                    textStyle: TextFontStyle.cFFFFFFlogin,
                    context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
