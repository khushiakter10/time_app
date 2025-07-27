
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/gen/colors.gen.dart';
import '../../../common_widget/custom_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';

class OfflineScreen extends StatefulWidget {
  const OfflineScreen({super.key});

  @override
  State<OfflineScreen> createState() => _OfflineScreenState();
}

class _OfflineScreenState extends State<OfflineScreen> {
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
                    bottomRight: Radius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 5.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        child: Image.asset(Assets.images.image4.path),
                      ),
                      UIHelper.horizontalSpace(5.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Milan Jack", style: TextFontStyle.cFFFFFFloginff),
                          UIHelper.verticalSpace(5.h),
                          Row(
                            children: [
                              Image.asset(
                                Assets.icons.offline.path,
                                height: 15.h,
                              ),
                             //UIHelper.horizontalSpace(1.w),
                              Text("24 NY, Florida, Miami", style: TextFontStyle.cD2D2DF),
                             UIHelper.horizontalSpace(90.w),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 9.h),
                            child: GestureDetector(
                              onTap: (){
                                NavigationService.navigateTo(Routes.notificationScreen);
                              },
                              child: Image.asset(
                                Assets.icons.notification.path,
                                height: 24.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      border: Border.all(color: AppColors.c000000, width: 2),
                      color: AppColors.cFFFFFF),
                  child: Padding(
                    padding: EdgeInsets.all(4.sp),
                    child: TabBar(
                      padding: const EdgeInsets.all(4),
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black54,
                      indicator: BoxDecoration(
                        color: AppColors.cD34444,
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
              UIHelper.verticalSpace(125.h),
              Center(
                child: Image.asset(
                  Assets.images.meglaaksh.path,
                  height: 166.h,
                ),
              ),
              UIHelper.verticalSpace(100.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: customeButton(
                    borderColor: Colors.transparent,
                    name: "You Are Offline",
                    onCallBack: () {
                      // NavigationService.navigateTo(Routes.connectScreen);
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
