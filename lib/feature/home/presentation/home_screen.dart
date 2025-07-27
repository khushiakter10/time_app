
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/constants/text_font_style.dart';
import 'package:time_app/gen/colors.gen.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';
import 'package:time_app/helpers/ui_helpers.dart';
import '../../../common_widget/custom_button.dart';
import '../../../gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.cE0E1F5,
        body: SingleChildScrollView(
          child: Column(
            children: [
              UIHelper.verticalSpace(50.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 11.w),
                  decoration: BoxDecoration(
                      color: AppColors.c1C1F5E,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.r),
                          bottomRight: Radius.circular(30.r))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 22.h, horizontal: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          child: Image.asset(Assets.images.image4.path),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Milan Jack",
                                      style: TextFontStyle.cFFFFFFloginff),
                                  UIHelper.horizontalSpace(7.w),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.c37B44E,
                                        borderRadius:
                                            BorderRadius.circular(16.r)),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 3.h,horizontal: 7.w),
                                      child: Text("Online",
                                          style: TextFontStyle.cFFFFFF),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    Assets.images.location.path,
                                    height: 14.h,
                                  ), UIHelper.horizontalSpace(5.w),
                                  Text(
                                    "24 NY, Florida, Miami",
                                    style: TextFontStyle.cD2D2DF,
                                  ),
                                  UIHelper.horizontalSpace(80.w),

                                ],
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            NavigationService.navigateTo(Routes.notificationScreen);
                          },
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 9.h),
                            child: Row(
                              children: [
                                Image.asset(
                                  Assets.icons.notification.path,
                                  height: 26.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              UIHelper.verticalSpace(20.h),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      border: Border.all(color: AppColors.c000000, width: 2.w),
                      color: AppColors.cFFFFFF),
                  child: Padding(
                    padding: EdgeInsets.all(4.sp),
                    child: TabBar(
                      padding: const EdgeInsets.all(4),
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black54,
                      indicator: BoxDecoration(
                        color: AppColors.c07B939,
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                      tabs: const [
                        Tab(text: 'Check out'),
                        Tab(text: 'Check in'),
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(10.r),
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
                                Text("Your Route",
                                    style: TextFontStyle.c1C1F5Esignup),
                                Spacer(),

                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 15.w),
                                  decoration: BoxDecoration(
                                      color: AppColors.cE0E0E0,
                                      borderRadius:
                                          BorderRadius.circular(44.r)),
                                  child: Center(
                                    child: Text("New",
                                        style: TextFontStyle.c636363),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
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
                                              color: AppColors.c07B939,
                                              borderRadius:
                                                  BorderRadius.circular(30.r)),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7.w, vertical: 5.h),
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
                                              color: AppColors.c07B939,
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
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 2.w),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.cF0F0F0,
                                    borderRadius: BorderRadius.circular(7.r),
                                    border:
                                        Border.all(color: AppColors.cC4C4C4)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.sp),
                                  child: Column(
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
                                ),
                              ),
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
                            customeButton(
                                borderColor: AppColors.c000000,
                                name: "Decline",
                                onCallBack: () {
                                  NavigationService.navigateTo(Routes.historyScreen);
                                },
                                height: 48.h,
                                minWidth: 341.w,
                                borderRadius: 40.r,
                                color: AppColors.cFFFFFF,
                                textStyle: TextFontStyle.c1C1F5Eurbanist16,
                                context: context),
                            UIHelper.verticalSpace(15.h),
                            customeButton(
                                borderColor: Colors.transparent,
                                name: "Accept",
                                onCallBack: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => Dialog(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                    Assets.icons.group.path,
                                                    height: 17.h),
                                                UIHelper.horizontalSpace(7.w),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Pickup",
                                                          style: TextFontStyle
                                                              .c1C1F5Epiker),
                                                      UIHelper.verticalSpace(
                                                          5.w),
                                                      GestureDetector(
                                                        onTap: (){
                                                          NavigationService.navigateTo(Routes.offlineScreen);
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                AppColors.cF0F0F0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.r),
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .cC4C4C4),
                                                          ),
                                                          child: Padding(
                                                            padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 10.w),
                                                            child: const Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  "8134 Franz Parkways, Suite 805, Lao People",
                                                                ),
                                                                Text("Florida, Miami")
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            UIHelper.verticalSpace(15.h),
                                            Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(Assets.icons.uiui.path,
                                                    height: 17.h),
                                                UIHelper.horizontalSpace(7.w),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Dropoff location",
                                                          style: TextFontStyle
                                                              .c1C1F5Epiker),
                                                      UIHelper.verticalSpace(5.w),
                                                      GestureDetector(
                                                        onTap: (){
                                                          NavigationService.navigateTo(Routes.offlineScreen);
                                                        },
                                                        child:  Container(
                                                          padding: EdgeInsets.symmetric(horizontal: 63.w,vertical: 7.h),
                                                          //width: 236.w,
                                                          decoration:
                                                          BoxDecoration(
                                                            color:
                                                            AppColors.cF0F0F0,
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10.r),
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .cC4C4C4),
                                                          ),
                                                          child:  Text(
                                                            "Cape Girardeau, USA",
                                                          ),

                                                        ),

                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                height: 48.h,
                                minWidth: 341.w,
                                borderRadius: 40.r,
                                color: AppColors.c1C1F5E,
                                textStyle: TextFontStyle.cFFFFFFlogin,
                                context: context),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
