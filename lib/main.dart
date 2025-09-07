// import 'dart:developer';
// import 'package:auto_animated/auto_animated.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_displaymode/flutter_displaymode.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:provider/provider.dart';
// import 'package:time_app/feature/bottom_navigation/presentation/flotingaction_button.dart';
// import '/helpers/all_routes.dart';
// import 'constants/app_constants.dart';
// import 'gen/colors.gen.dart';
// import 'helpers/di.dart';
// import 'helpers/helper_methods.dart';
// import 'helpers/language.dart';
// import 'helpers/navigation_service.dart';
// import 'networks/dio/dio.dart';
//
// Future<void> backgroundHandler(RemoteMessage message) async {}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await GetStorage.init();
//   diSetup();
//   initiInternetChecker();
//   DioSingleton.instance.create();
//   try {
//     await FlutterDisplayMode.setHighRefreshRate();
//   } catch (e) {
//     log('Error setting high refresh rate: $e');
//   }
//
//
//   runApp( const MyApp(),
//     // DevicePreview(
//     //   enabled: !kReleaseMode,
//     //   builder: (context) => MyApp(),
//     // ),
//
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     rotation();
//     setInitValue();
//     return MultiProvider(
//
//       providers: providers,
//       child: AnimateIfVisibleWrapper(
//         showItemInterval: const Duration(milliseconds: 150),
//         child: PopScope(
//           canPop: false,
//           onPopInvokedWithResult: (bool didPop, dynamic result) async {
//             showMaterialDialog(context);
//           },
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               return  const KhusNavigation ();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class UtillScreenMobile extends StatelessWidget {
//   const UtillScreenMobile({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     String language = appData.read(kKeyLanguage);
//     String countryCode = appData.read(kKeyCountryCode);
//
//     return ScreenUtilInit(
//       designSize: const Size(375, 812),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (_, child) {
//         return PopScope(
//           canPop: false,
//           onPopInvokedWithResult: (bool didPop,dynamic result) async {
//             showMaterialDialog(context);
//           },
//           child: GetMaterialApp(
//             // useInheritedMediaQuery: true,
//             // locale: DevicePreview.locale(context),
//             // builder: DevicePreview.appBuilder,
//             showPerformanceOverlay: false,
//             theme: ThemeData(
//               // primarySwatch: CustomTheme.kToDark,
//               useMaterial3: false,
//               scaffoldBackgroundColor: AppColors.cF8F8F8
//             ),
//             debugShowCheckedModeBanner: false,
//             translations: LocalString(),
//             // locale: Locale(language, countryCode),
//             // builder: (context, widget) {
//             //   return MediaQuery(data: MediaQuery.of(context), child: widget!);
//             // },
//             navigatorKey: NavigationService.navigatorKey,
//             onGenerateRoute: RouteGenerator.generateRoute,
//
//
//             home: const KhusNavigation  (),
//           ),
//         );
//       },
//     );
//   }
// }












import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:time_app/feature/bottom_navigation/presentation/flotingaction_button.dart' hide providers;
import 'feature/bottom_navigation/bottomnavigation_screen_.dart';
import 'helpers/all_routes.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'helpers/navigation_service.dart';
import 'helpers/register_provider.dart';
import 'networks/dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(InternetController(), permanent: true);
  await GetStorage.init();
  diSetup();
  DioSingleton.instance.create();

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        showMaterialDialog(context);
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return const UtillScreenMobile();
        },
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context),
              child: widget!,
            );
          },
          navigatorKey: NavigationService.navigatorKey,
          onGenerateRoute: RouteGenerator.generateRoute,


          home:  KhusNavigation (),







        );
      },
    );
  }
}
