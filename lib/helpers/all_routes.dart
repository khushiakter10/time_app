import 'dart:io';
import 'package:flutter/cupertino.dart';
import '../feature/auth/presentation/country_picker_screen.dart';
import '../feature/auth/presentation/log_in_screen.dart';
import '../feature/auth/presentation/sign_up_screen.dart';
import '../feature/auth/presentation/verification_screen.dart';
import '../feature/home/presentation/message_screen.dart';
import '../feature/home/presentation/edit_profile_screen.dart';
import '../feature/home/presentation/history_screen.dart';
import '../feature/home/presentation/home_screen.dart';
import '../feature/home/presentation/notification_screen.dart';
import '../feature/home/presentation/offline_screen.dart';
import '../feature/home/presentation/profile_screen.dart';
import '../feature/onbording/presentation/step_two_screen.dart';
import '../loading_screen.dart';
import '../navigation_screen.dart';
import '../onboard_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;
  static const String loadingScreen = '/Loading';
  static const String onboardScreen = '/onboardScreen';
  static const String stepTwoScreen = '/stepTwoScreen';
  static const String logInScreen = '/logInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String countryPickerScreen = '/countryPickerScreen';
  static const String verificationScreen = '/verificationScreen';
  static const String homeScreen = '/homeScreen';
  static const String offlineScreen = '/offlineScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String profileScreen = '/profileScreen';
  static const String editProfileScreeen = '/editProfileScreeen';
  static const String historyScreen = '/historyScreen';
  static const String navigationScreen = '/navigationScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loadingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const Loading(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const Loading());

      case Routes.navigationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: NavigationScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => NavigationScreen());

 case Routes.onboardScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: OnboardScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OnboardScreen());


case Routes.stepTwoScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: StepTwoScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => StepTwoScreen());

      case Routes.logInScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: LogInScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => LogInScreen());

case Routes.signUpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: SignUpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SignUpScreen());


case Routes.countryPickerScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CountryPickerScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CountryPickerScreen());

case Routes.verificationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: VerificationScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => VerificationScreen());

case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HomeScreen());

case Routes.offlineScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: OfflineScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OfflineScreen());


  case Routes.notificationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: NotificationScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => NotificationScreen());

 case Routes.profileScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: ProfileScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ProfileScreen());

case Routes.editProfileScreeen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: EditProfileScreeen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => EditProfileScreeen());

case Routes.historyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HistoryScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HistoryScreen());



      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
