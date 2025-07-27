
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/common_widget/custom_textformwidget.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/helpers/ui_helpers.dart';
import '../../../common_widget/custom_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';

class EditProfileScreeen extends StatefulWidget {
  const EditProfileScreeen({super.key});

  @override
  State<EditProfileScreeen> createState() => _EditProfileScreeenState();
}

class _EditProfileScreeenState extends State<EditProfileScreeen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cE0E1F5,
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(60.h),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      NavigationService.goBack();
                    },
                    child: Image.asset(Assets.icons.arrowLeft.path,height: 24.h)),
                UIHelper.horizontalSpace(95.w),
                Text("Edit Profile",style: TextFontStyle.c1C1F5Eurbanist16w600)
              ],
            ),
            UIHelper.verticalSpace(25.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
               CircleAvatar(
                  radius: 50.r,
                  backgroundColor: Colors.transparent, // Optional: Remove default background
                  child: Image.asset(Assets.images.image4.path),
                ),
                Positioned(
                  left: 75,
                  bottom: 1,
                    right: 20,
                    child:  CircleAvatar(
                      radius: 9.r,
                     backgroundColor: Colors.transparent,
                      child: Transform.scale(
                        scale: 2,
                          child: Image.asset(Assets.icons.optionimage.path)),
                    )
                ),
              ],

            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 11.w),
              child: Row(
                children: [
                  Text("Name",style: TextFontStyle.welcomec00000014sp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormWiget(
                fillColor: AppColors.cFFFFFF,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                hintTxt: "Enter your Name",
                hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
              ),
            ),
          /////
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 11.w),
              child: Row(
                children: [
                  Text("Email ",style: TextFontStyle.welcomec00000014sp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormWiget(
                fillColor: AppColors.cFFFFFF,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                hintTxt: "Email",
                hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
              ),
            ),
            ///////
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 11.w),
              child: Row(
                children: [
                  Text("Phone Number",style: TextFontStyle.welcomec00000014sp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormWiget(
                fillColor: AppColors.cFFFFFF,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                hintTxt: "Email",
                hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
              ),
            ),
           //
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 11.w),
              child: Row(
                children: [
                  Text("Address",style: TextFontStyle.welcomec00000014sp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormWiget(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(Assets.icons.logo1.path,height: 11.h),
                ),
                fillColor: AppColors.cFFFFFF,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(color: AppColors.cB6B6B6),
                ),
                hintTxt: "Select Your Address",
                hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
              ),
            ),
            UIHelper.verticalSpace(30.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: customeButton(
                  borderColor: Colors.transparent,
                  name: "Save",
                  onCallBack: () {
                    NavigationService.navigateTo(Routes.profileScreen);
                  },
                  height: 48.h,
                  minWidth: 342,
                  borderRadius: 40.r,
                  color: AppColors.c1C1F5E,
                  textStyle: TextFontStyle.cFFFFFFlogin,
                  context: context),
            ),
            UIHelper.verticalSpace(20.h),


          ],
        ),
      ),

    );
  }
}
