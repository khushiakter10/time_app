
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:time_app/common_widget/custom_button.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/gen/assets.gen.dart';
import 'package:time_app/gen/colors.gen.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';
import 'package:time_app/helpers/ui_helpers.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _pinController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.country.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 17.w),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      NavigationService.goBack();
                    },
                      child: Image.asset(Assets.icons.arew.path, height: 24.h)),
                  UIHelper.horizontalSpace(8.w),
                  Text("Verification", style: TextFontStyle.c000000forget),
                ],
              ),
              UIHelper.verticalSpace(50.h),
              Column(
                children: [
                  Text("Verification", style: TextFontStyle.c322E2Bverificatiobtext),
                  UIHelper.verticalSpace(20.h),
                  Text(
                    "5 digit pin has been sent to your number. Enter",
                    style: TextFontStyle.c919EABdigit,
                  ),
                  UIHelper.verticalSpace(7.h),
                  Text("the code below to continue.", style: TextFontStyle.c919EABdigit)
                ],
              ),
              UIHelper.verticalSpace(50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    preFilledWidget: Text(
                      "0",
                      style: TextFontStyle.c000000w400,
                    ),
                    controller: _pinController,
                    length: 4,
                    pinAnimationType: PinAnimationType.fade,
                    onCompleted: (pin) {
                    },
                    onChanged: (pin) {
                    },
                    defaultPinTheme: PinTheme(
                      margin: EdgeInsets.symmetric(horizontal: 9.w),
                      height: 50.h,
                      width: 50.w,
                      textStyle:  TextFontStyle.c000000w400,
                      decoration: BoxDecoration(
                        color: AppColors.cF6FEFF,
                        border: Border.all(
                          color: AppColors.c1C1F5E,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(50.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customeButton(
                    borderColor: Colors.transparent,
                    name: "Verify",
                    onCallBack: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.r),
                              topRight: Radius.circular(25.r),
                              bottomRight: Radius.circular(25.r),
                              bottomLeft: Radius.circular(25.r),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(Assets.images.fulImage.path),
                                UIHelper.verticalSpace(10.h),
                                Text("Congratulations", style: TextFontStyle.c1C1F5Econgratuilation),
                                UIHelper.verticalSpace(9.h),
                                Text("You have successfully created your ", style: TextFontStyle.c242424youhave),
                                UIHelper.verticalSpace(3.h),
                                Text("account", style: TextFontStyle.c242424youhave),
                                UIHelper.verticalSpace(15.h),

                                customeButton(
                                  borderColor: Colors.transparent,
                                  name: "Go to the home page",
                                  onCallBack: () {
                                    NavigationService.navigateTo(Routes.navigationScreen);
                                  },
                                  height: 48.h,
                                  minWidth: 342,
                                  borderRadius: 40.r,
                                  color: AppColors.c1C1F5E,
                                  textStyle: TextFontStyle.cFFFFFFlogin,
                                  context: context,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );


                    },
                    height: 48.h,
                    minWidth: 342,
                    borderRadius: 40.r,
                    color: AppColors.c1C1F5E,
                    textStyle: TextFontStyle.cFFFFFFlogin,
                    context: context),
              ),
              UIHelper.verticalSpace(30.h),
              Text("Resend Code?",style: TextFontStyle.c1C1F5Eforget),

            ],
          ),
        ),
      ),
    );
  }
}
