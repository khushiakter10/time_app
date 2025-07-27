
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/gen/colors.gen.dart';
import 'package:time_app/helpers/ui_helpers.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cE0E1F5,
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(50.h),
            Center(
              child: Text("Notification", style: TextFontStyle.c192A48notification),
            ),
            UIHelper.verticalSpace(15.h),
            UIHelper.customDivider(),
            UIHelper.verticalSpace(10.h),
            Text("Today", style: TextFontStyle.c000000),
            UIHelper.verticalSpace(15.h),

            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.profileScreen);
              },
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: ( context,index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            child: Image.asset(Assets.images.image1.path),
                          ),
                          UIHelper.horizontalSpace(7.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ralph Edwards",style: TextFontStyle.c192A48replx),
                              UIHelper.verticalSpace(6.h),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  style: TextFontStyle.c77777B),
                              UIHelper.verticalSpace(4.h),
                              Text("dolor sit amet, consectetur adipiscing elit.",style: TextFontStyle.c77777B)
                            ],
                          )

                        ],
                      ),
                      Text("2h",style: TextFontStyle.c1C1F5Eurbanist16w500)

                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return   UIHelper.verticalSpace(20.h);
                },

              ),
            ),
            Text("Yesterday",style: TextFontStyle.c000000),
            UIHelper.verticalSpace(15.h),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.profileScreen);
              },
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: ( context,index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            child: Image.asset(Assets.images.image2.path),
                          ),
                          UIHelper.horizontalSpace(7.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ralph Edwards",style: TextFontStyle.c192A48replx),
                              UIHelper.verticalSpace(6.h),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",style: TextFontStyle.c77777B),
                              UIHelper.verticalSpace(4.h),
                              Text("dolor sit amet, consectetur adipiscing elit.",style: TextFontStyle.c77777B)
                            ],
                          )

                        ],
                      ),
                      Text("4h",style: TextFontStyle.c1C1F5Eurbanist16w500)

                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return   UIHelper.verticalSpace(20.h);
                },

              ),
            ),
            UIHelper.verticalSpace(30.h),
          ],
        ),
      ),
    );
  }
}
