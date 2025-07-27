
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cE0E1F5,
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: Padding(
        padding:  EdgeInsets.symmetric(vertical: 40.h ),
        child: Drawer(
          width: 350.w,
          backgroundColor: AppColors.c1C1F5E,
          elevation: 2,
          shape:OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25.r,
                              backgroundColor: Colors.transparent, // Optional: Remove default background
                              child: Image.asset(Assets.images.image4.path),
                            ),
                            UIHelper.horizontalSpace(12.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text properly
                              children: [
                                Text(
                                  "Milan Jack",
                                  style: TextFontStyle.cFFFFFFloginff,
                                ),
                                UIHelper.verticalSpace(4.h),
                                Row(
                                  children: [
                                    Image.asset(
                                      Assets.icons.svae.path,
                                      height: 14.h,
                                    ),
                                    UIHelper.horizontalSpace(5.w), // Adjust spacing
                                    Text(
                                      "24 NY, Florida, Miami",
                                      style: TextFontStyle.cD2D2DF,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                         onTap: (){
                           NavigationService.navigateTo(Routes.editProfileScreeen);
                         },
                          child: Image.asset(
                            Assets.images.penimage.path,
                            height: 35.h,
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(20.h),

                    UIHelper.customDivider(
                      height: 1,
                      color: AppColors.cFAFAFA
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: (){
                  NavigationService.navigateTo(Routes.historyScreen);
                },
                leading: Image.asset(Assets.icons.message.path,height: 20.h),
                title: Text("History",style: TextFontStyle.cFFFFFFlogin),
                trailing: Image.asset(Assets.icons.arrwback.path,height: 20.h),
              ),
              ListTile(
                onTap: (){
                  NavigationService.navigateTo(Routes.notificationScreen);
                },
                leading: Image.asset(Assets.icons.image5.path,height: 20.h),
                title: Text("Notification",style: TextFontStyle.cFFFFFFlogin),
                trailing: Image.asset(Assets.icons.arrwback.path,height: 20.h),
              ),
              ListTile(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Log Out", style: TextFontStyle.c192A48w600),
                            UIHelper.verticalSpace(25.h),
                            Text("Are You Sure you Want to log out", style: TextFontStyle.c242424youhave),
                            UIHelper.verticalSpace(18.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.cFFFFFF,
                                      borderRadius: BorderRadius.circular(100.r),
                                      border: Border.all(color: AppColors.c024F9E)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(vertical: 7.h,horizontal: 14.w),
                                    child: Text("Cancel",style: TextFontStyle.c143D8Cw700),
                                  ),
                                ),
                                UIHelper.horizontalSpace(6.w),
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.c1C1F5E,
                                      borderRadius: BorderRadius.circular(100.r),
                                      border: Border.all(color: AppColors.c024F9E)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(vertical: 7.h,horizontal: 10.w),
                                    child: GestureDetector(
                                      onTap: (){
                                        NavigationService.navigateTo(Routes.logInScreen);
                                      },
                                        child: Text("Yes , log out",style: TextFontStyle.cFFFFFF18)),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },

                leading: Image.asset(Assets.icons.card.path,height: 20.h),
                title: Text("Logout",style: TextFontStyle.cB6B6B6),
              ),


            ],
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Profile",style: TextFontStyle.c1C1F5Eurbanist16w600)
            ),
            UIHelper.verticalSpace(30.h),
            Center(
              child: CircleAvatar(
                radius: 50.r,
                backgroundColor: Colors.transparent, // Optional: Remove default background
                child: Image.asset(Assets.images.image4.path),
              ),
            ),
            UIHelper.verticalSpace(6.h),
            Center(child: Text("Henry Johnson",style: TextFontStyle.c192A48replx16)
            ),
            UIHelper.verticalSpace(100.h),

            Row(
              children: [
                Image.asset(Assets.icons.user.path,height: 18.h),
                UIHelper.horizontalSpace(12.w),
                Text("Milan Jack",style: TextFontStyle.c333333w600w400)
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Image.asset(Assets.images.phone.path,height: 18.h),
                UIHelper.horizontalSpace(12.w),
                Text("+44 26537 26347",style: TextFontStyle.c333333w600w400)
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Image.asset(Assets.icons.mail.path,height: 18.h),
                UIHelper.horizontalSpace(12.w),
                Text("example@gmail.com",style: TextFontStyle.c333333w600w400)
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Image.asset(Assets.icons.locationMarker.path,height: 18.h),
                UIHelper.horizontalSpace(12.w),
                Text("24 NY, Florida, Miam",style: TextFontStyle.c333333w600w400)
              ],
            ),

          ],
        ),
      ),

    );
  }
}
