
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/gen/colors.gen.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';
import 'package:time_app/helpers/ui_helpers.dart';
import '../../../gen/assets.gen.dart';

class StepTwoScreen extends StatefulWidget {
  const StepTwoScreen({super.key});

  @override
  State<StepTwoScreen> createState() => _StepTwoScreenState();
}

class _StepTwoScreenState extends State<StepTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.steaptwo.path),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  border: Border.all(color: AppColors.c4F3422),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 12.w),
                  child: Text("Step Two", style: TextFontStyle.stepc4F3422),
                ),
              ),
              UIHelper.verticalSpace(443.h),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color:  AppColors.cFFFFFF,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.r),
                            topRight: const Radius.circular(40))
                    ),
                    child:   Padding(
                      padding:  EdgeInsets.symmetric(vertical: 30.h,horizontal: 12.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 50.w),
                            child: LinearPercentIndicator(
                              barRadius: const Radius.circular(10),
                              width: MediaQuery.of(context).size.width - 150,
                              lineHeight: 13.0,
                              percent: 1,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: AppColors.c1C1F5E,
                              backgroundColor: AppColors.cD0D1F1,
                            ),
                          ),
                          UIHelper.verticalSpace(31.h),
                          Text("Empower Your Fleet",style:  TextFontStyle.signc1C1F5E30),
                          UIHelper.verticalSpace(25.h),
                          Text("Track routes, manage jobs, and stay connected ",style: TextFontStyle.c575757),
                          UIHelper.verticalSpace(6.h),
                          Text("effortlessly.",style: TextFontStyle.c575757),
                          UIHelper.verticalSpace(35.h),

                          GestureDetector(
                            onTap: (){
                              NavigationService.navigateTo(Routes.logInScreen);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                                decoration: BoxDecoration(
                                    color: AppColors.c1C1F5E,
                                    borderRadius: BorderRadius.circular(100.r)
                                ),
                                child:  Image.asset(Assets.icons.motoicon.path,height: 24.h)
                            ),
                          ),

                        ],
                      ),
                    ),)

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
