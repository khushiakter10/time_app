
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';
import '../helpers/navigation_service.dart';
import '../helpers/ui_helpers.dart';
import 'icon_holder_widget.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final bool showBack;
  final double titleSpace;
  final Color? titleColor;
  const CustomAppbar({
    super.key,
    required this.name,
    this.showBack = false,
    this.titleSpace = 0,
    this.titleColor = AppColors.c000000
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      color:Colors.transparent,
      child: Padding(
        padding:  EdgeInsets.only(top: 10, left: UIHelper.kDefaulutPadding() ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, 
          mainAxisAlignment: showBack? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          showBack?InkWell(
            onTap: () => NavigationService.goBack,
            child: Container(
              height: 40.h, width: 40.h,
              decoration: const BoxDecoration(
                color: AppColors.cFFFFFF,
                shape: BoxShape.circle
              ),
              child: IconHolder(
                icon: Icons.arrow_back,
                size: 18.sp,
                bgColor: Colors.transparent,
                iconColor: AppColors.primaryColor,
              ),
            ),
          ) : const SizedBox.shrink(),
           showBack? UIHelper.horizontalSpace(titleSpace)  : const SizedBox.shrink(),
          Flexible(
            child: Text(
              name.tr, // title,
              overflow: TextOverflow.ellipsis,
              style: TextFontStyle.headline24c011510OutfitW600
                  .copyWith(fontSize: 16.sp, color: titleColor),
            ),
          ),
          // showBack? UIHelper.horizontalSpace(110.w) : const SizedBox.shrink(),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.h);
}
