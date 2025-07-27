
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_app/helpers/ui_helpers.dart';
import '../../../common_widget/custom_button.dart';
import '../../../common_widget/custom_textformwidget.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController scrollController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();



  bool checkbox1 = true;
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
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
                  UIHelper.verticalSpace(280.h),
                      Container(
                        decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(40),
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
                  Text("Welcome", style: TextFontStyle.welcomec000000),
                  UIHelper.verticalSpace(10.h),
                  Text("Log in to continue managing your logistics",
                      style: TextFontStyle.welcomec00000014sp),
                  UIHelper.verticalSpace(20.h),
                  Text("Email or Phone Number",
                      style: TextFontStyle.welcomec00000014sp),
                  UIHelper.verticalSpace(5.h),
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
                    hintTxt: "Email or Phone Number",
                    hinStyleColor: TextFontStyle.c8D8D8Dtextcolor,
                    labelText: "Email",
                    labelTextColor: TextFontStyle.c8D8D8Dtextcolor,
                  ),
                  UIHelper.verticalSpace(15.h),
                  Text("Password", style: TextFontStyle.welcomec00000014sp),
                  UIHelper.verticalSpace(5.h),
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
                  UIHelper.verticalSpace(3.h),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.7,
                        child: Checkbox(
                          shape: OutlinedBorder.lerp(
                              const RoundedRectangleBorder(),
                              const CircleBorder(),
                              0.33.r),
                          side: const BorderSide(
                              color: AppColors.cABB3BB, width: 1),
                          activeColor: AppColors.cFFFFFF,
                          checkColor: AppColors.c000000,
                          value: checkbox1,
                          onChanged: (newValue) {
                            setState(() {
                              checkbox1 = newValue!;
                            });
                          },
                        ),
                      ),
                      Text("Remember me",
                          style: TextFontStyle.c8D8D8Dtextcolor),
                      const Spacer(),
                      Text("Forgot password?",
                          style: TextFontStyle.c1C1F5Eforget)
                    ],
                  ),
                  UIHelper.verticalSpace(55.h),
                  customeButton(
                      borderColor: Colors.transparent,
                      name: "Log in",
                      onCallBack: () {
                        NavigationService.navigateTo(Routes.signUpScreen);
                      },
                      height: 48.h,
                      minWidth: 342,
                      borderRadius: 40.r,
                      color: AppColors.c1C1F5E,
                      textStyle: TextFontStyle.cFFFFFFlogin,
                      context: context),
                  UIHelper.verticalSpace(30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn’t have an account?",style: TextFontStyle.c141414accounttext),
                      UIHelper.horizontalSpace(9.w),
                      GestureDetector(
                          onTap: (){
                            NavigationService.navigateTo(Routes.signUpScreen);
                          },
                          child: Text("Sign Up",style: TextFontStyle.c1C1F5Esignup))
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
