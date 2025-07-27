
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cE0E1F5,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.c1C1F5E,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.c024F9E)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 20.w),
                    child: Text("Complete",style: TextFontStyle.cFFFFFFlogin),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),

            UIHelper.customDivider(
              height: 2,
              color: AppColors.c1C1F5E,
            ),
            UIHelper.verticalSpace(15.h),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 12.h),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(8.r),

                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 9.h, horizontal: 9.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.icons.golp.path,
                                  height: 16.h),
                              UIHelper.horizontalSpace(7.w),
                              GestureDetector(
                                onTap: (){
                                  NavigationService.navigateTo(Routes.homeScreen);
                                },
                                child: Text("Your Route",
                                    style: TextFontStyle.c1C1F5Esignup),
                              ),
                              Spacer(),

                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.c07B939,
                                    borderRadius:
                                    BorderRadius.circular(44.r)),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 6.h,horizontal: 15.w),
                                  child: Text("Done",
                                      style: TextFontStyle.cFFFFFF14w600),
                                ),
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(7.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    image:  DecorationImage(
                                        image: AssetImage(
                                            'assets/images/historyimage.png')),
                                    color: AppColors.cFFFFFF,
                                    borderRadius: BorderRadius.circular(120.r),
                                    border: Border.all(
                                        color: AppColors.cA8C3A0, width: 2.w)),
                              ),
                              UIHelper.horizontalSpace(7.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Ahmed Mohamed",
                                      style: TextFontStyle.c242424),
                                  UIHelper.verticalSpace(6.h),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.cC4C4C4,
                                            borderRadius:
                                            BorderRadius.circular(30.r)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.w, vertical: 6.h),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  Assets
                                                      .images.callimage.path,
                                                  height: 16.h),
                                              UIHelper.horizontalSpace(5.w),
                                              Text("(569) 8965-1458",
                                                  style: TextFontStyle
                                                      .welcomcFFFFFF16)
                                            ],
                                          ),
                                        ),
                                      ),
                                      UIHelper.horizontalSpace(5.w),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.cC4C4C4,
                                            borderRadius:
                                            BorderRadius.circular(30.r)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5.h, horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  Assets.icons.message.path,
                                                  height: 11.h),
                                              UIHelper.horizontalSpace(5.w),
                                              Text("Email",
                                                  style: TextFontStyle
                                                      .welcomcFFFFFF16)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(20.h),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Image.asset(Assets.icons.group.path,
                                      height: 17.h),
                                  UIHelper.horizontalSpace(7.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Pickup",
                                            style: TextFontStyle
                                                .c1C1F5Epiker),
                                        UIHelper.verticalSpace(5.w),
                                        const Text(
                                          " 8134 Franz Parkways, Suite 805, Lao Peopl...",
                                          maxLines: 1,
                                          overflow:
                                          TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              UIHelper.verticalSpace(10.h),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Image.asset(Assets.icons.uiui.path,
                                      height: 17.h),
                                  UIHelper.horizontalSpace(7.w),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text("Dropoff",
                                          style: TextFontStyle
                                              .c1C1F5Epiker),
                                      UIHelper.verticalSpace(5.w),
                                      const Text("Cape Girardeau, USA"),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(8.h),
                          Row(
                            children: [
                              Image.asset(Assets.images.messagebox.path,
                                  height: 11.h),
                              UIHelper.horizontalSpace(13.w),
                              Text("example@gmail.com",
                                  style: TextFontStyle.c575757w500urbanist),
                            ],
                          ),
                          UIHelper.verticalSpace(8.h),
                          Row(
                            children: [
                              Image.asset(Assets.icons.boxsadw.path,
                                  height: 16.h),
                              UIHelper.horizontalSpace(13.w),
                              Text("01/12/2025",
                                  style: TextFontStyle.c575757w500urbanist),
                            ],
                          ),
                          UIHelper.verticalSpace(30.h),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            UIHelper.verticalSpace(10.h),


          ],
        ),
      ),
    );
  }
}
