// ignore_for_file: use_super_parameters, library_private_types_in_public_api, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_app/feature/home/presentation/message_screen.dart';
import 'package:time_app/feature/home/presentation/profile_screen.dart';
import 'feature/home/presentation/home_screen.dart';
import 'gen/assets.gen.dart';
import 'gen/colors.gen.dart';
import 'helpers/helper_methods.dart';

// Global ValueNotifier for currentIndex
final ValueNotifier<int> globalCurrentIndexNotifier = ValueNotifier<int>(0);

class NavigationScreen extends StatefulWidget {
  final Widget? pageNum;

  const NavigationScreen({Key? key, this.pageNum}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  // ignore: unused_field
  int _colorIndex = 0;

  // ignore: prefer_final_fields
  bool _isFisrtBuild = true;
  // ignore: unused_field, prefer_final_fields
  bool _navigationOn = true;
  // bool _isFirstBuild = true;

  final List<Widget> _screens = [
    const HomeScreen(),
     MessageScreen(),
    const  ProfileScreen(),

  ];
  @override
  void initState() {
    super.initState();
    // _currentIndex = widget.pageNum ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    Object? args;
    StatefulWidget? screenPage;
    if (_isFisrtBuild) {
      args = ModalRoute.of(context)!.settings.arguments;
    }
    if (args != null) {
      _colorIndex = 4;
      screenPage = args as StatefulWidget;
      var newColorIndex = -1;

      for (var element in _screens) {
        newColorIndex++;
        if (element.toString() == screenPage.toString()) {
          _colorIndex = newColorIndex;
          Future.delayed(const Duration(microseconds: 300), () {
            globalCurrentIndexNotifier.value = _colorIndex;
          });

          break;
        }
      }
    }
    // ignore: no_leading_underscores_for_local_identifiers

    return WillPopScope(
        onWillPop: () async {
          showMaterialDialog(context);
          return false;
        },
        child: Scaffold(
          backgroundColor: AppColors.cFFFFFF,
          extendBody: true,
          body: ValueListenableBuilder<int>(
            valueListenable: globalCurrentIndexNotifier,
            builder: (context, currentIndex, child) {
              return Center(
                child: (screenPage != null)
                    ? screenPage
                    : _screens.elementAt(_currentIndex),
              );
            },
          ),
          bottomNavigationBar: SizedBox(
            child: Container(
              width: double.infinity,
              color: AppColors.c1C1F5E,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ValueListenableBuilder<int>(
                  valueListenable: globalCurrentIndexNotifier,
                  builder: (context, currentIndex, child) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NavItemWidget(
                            isActive: _currentIndex == 0,
                            activeIcon: Assets.icons.homeActive,
                            disableIcon: Assets.icons.homeDisable,
                            onTap: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                          ),
                          NavItemWidget(
                            isActive: _currentIndex == 1,
                            activeIcon: Assets.icons.connectActive,
                            disableIcon: Assets.icons.connectDisable,
                            onTap: () {
                              setState(() {
                                _currentIndex = 1;
                              });
                            },
                          ),

                          NavItemWidget(
                            isActive: _currentIndex == 2,
                            activeIcon: Assets.icons.profileActive,
                            disableIcon: Assets.icons.profileDisable,
                            onTap: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ));
  }
}

class NavItemWidget extends StatelessWidget {
  final bool isActive;
  final String activeIcon, disableIcon;
  final Function() onTap;
  const NavItemWidget(
      {super.key,
      required this.activeIcon,
      required this.disableIcon,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.h),
        margin: EdgeInsets.symmetric(vertical: 12.h),
        child: SvgPicture.asset(isActive ? activeIcon : disableIcon),
      ),
    );
  }
}
