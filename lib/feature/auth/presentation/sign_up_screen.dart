
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_app/common_widget/custom_button.dart';
import 'package:time_app/common_widget/custom_textformwidget.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/gen/colors.gen.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';
import 'package:time_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController scrollController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  bool checkbox1 = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.signUpBus.path),
                    fit: BoxFit.cover)
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UIHelper.verticalSpace(150.h),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.only(
                        topLeft:  Radius.circular(40.r),
                        topRight: Radius.circular(40.r))),
                child: SingleChildScrollView(
                  padding:
                  EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.w),
                        child: LinearPercentIndicator(
                          barRadius: Radius.circular(10.r),
                          width: MediaQuery.of(context).size.width - 199,
                          lineHeight: 11.0,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: AppColors.cD9D9D9,
                        ),
                      ),
                      UIHelper.verticalSpace(50.h),
                      Text("Create Your Account", style: TextFontStyle.welcomec000000),
                      UIHelper.verticalSpace(10.h),
                      Text("Log in to continue managing your logistics",
                          style: TextFontStyle.welcomec00000014sp),
                      UIHelper.verticalSpace(20.h),
                      Text("Name",
                          style: TextFontStyle.welcomec00000014sp),
                      UIHelper.verticalSpace(7.h),
                      CustomTextFormWiget(
                        controller: nameController,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        hintTxt: "enter your Name",
                        hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
                        labelText: "Name",
                        labelTextColor: TextFontStyle.c8D8D8Dtextcolor,
                      ),
                      UIHelper.verticalSpace(15.h),
                      Text("Email ", style: TextFontStyle.welcomec00000014sp),
                      UIHelper.verticalSpace(7.h),
                      CustomTextFormWiget(
                        controller: emailController,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        hintTxt: "Email ",
                        hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
                        labelText: "Email",
                        labelTextColor: TextFontStyle.c8D8D8Dtextcolor,
                      ),
                      UIHelper.verticalSpace(15.h),
                      Text("Phone Number", style: TextFontStyle.welcomec00000014sp),
                      UIHelper.verticalSpace(7.h),
                      CustomTextFormWiget(
                        controller: phoneNumberController,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        hintTxt: "Phone Number",
                        hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
                        labelText: "Phone",
                        labelTextColor: TextFontStyle.c8D8D8Dtextcolor,
                      ),
                      UIHelper.verticalSpace(15.h),
                      Text("Password", style: TextFontStyle.welcomec00000014sp),
                      UIHelper.verticalSpace(7.h),
                      CustomTextFormWiget(
                        controller: passwordController,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: AppColors.cB6B6B6),
                        ),
                        hintTxt: "Password",
                        hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
                        labelText: "Password",
                        labelTextColor: TextFontStyle.c8D8D8Dtextcolor,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(Assets.icons.iconimage.path,
                              height: 20.h),
                        ),
                        suffixIconColor: AppColors.c8D8D8D,
                      ),
                      UIHelper.verticalSpace(50.h),
                      customeButton(
                          borderColor: Colors.transparent,
                          name: "Sign Up",
                          onCallBack: () {
                            NavigationService.navigateTo(Routes.countryPickerScreen);
                          },
                          height: 48.h,
                          minWidth: 342,
                          borderRadius: 40.r,
                          color: AppColors.c1C1F5E,
                          textStyle: TextFontStyle.cFFFFFFlogin,
                          context: context),
                      UIHelper.verticalSpace(24.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("You have an account?",style: TextFontStyle.c141414accounttext),
                          UIHelper.horizontalSpace(9.w),
                          GestureDetector(
                              onTap: (){
                                NavigationService.navigateTo(Routes.logInScreen);
                              },
                              child: Text("Sign In",style: TextFontStyle.c1C1F5Esignup))
                        ],
                      ),
                      UIHelper.verticalSpace(24.h),
                    ],
                  ),
                ),
              ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
