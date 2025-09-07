//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ktmtommy_app/helpers/ui_helpers.dart';
//
// class AchievementScreen extends StatefulWidget {
//   const AchievementScreen({super.key});
//
//   @override
//   State<AchievementScreen> createState() => _AchievementScreenState();
// }
//
// class _AchievementScreenState extends State<AchievementScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.w),
//           child: Column(
//             children: [
//               UIHelper.verticalSpace(20.h),
//               Container(
//                 width: 327.w,
//                 padding: EdgeInsets.all(16.w),
//                 decoration: BoxDecoration(
//                   color: Color(0xFF181818),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Title
//                     SizedBox(
//                       width: 295.w,
//                       child: Text(
//                         'Macronutrient Distribution',
//                         style: TextStyle(
//                           color: Color(0xFFF3F3F3),
//                           fontSize: 18.sp,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w500,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                     UIHelper.verticalSpace(12.h),
//
//                     // Carbs Section
//                     _buildMacroItem(
//                       title: 'Carbs',
//                       percentage: '45%',
//                       grams: '69g',
//                       progress: 0.55,
//                       progressColor: Color(0xFFEEE6DA),
//                     ),
//                     UIHelper.verticalSpace(12.h),
//
//                     // Protein Section
//                     _buildMacroItem(
//                       title: 'Protein',
//                       percentage: '30%',
//                       grams: '46g',
//                       progress: 0.30,
//                       progressColor: Color(0xFF87B842),
//                     ),
//                     UIHelper.verticalSpace(12.h),
//
//                     // Fat Section
//                     _buildMacroItem(
//                       title: 'Fat',
//                       percentage: '25%',
//                       grams: '17g',
//                       progress: 0.25,
//                       progressColor: Color(0xFFCC1F28),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildMacroItem({
//     required String title,
//     required String percentage,
//     required String grams,
//     required double progress,
//     required Color progressColor,
//   }) {
//     return Column(
//       children: [
//         // Text Row
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: Color(0xFFF3F3F3),
//                 fontSize: 16.sp,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w400,
//                 height: 1.5,
//               ),
//             ),
//             Row(
//               children: [
//                 Text(
//                   '$percentage ',
//                   style: TextStyle(
//                     color: Color(0xFFF3F3F3),
//                     fontSize: 16.sp,
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w400,
//                     height: 1.5,
//                   ),
//                 ),
//                 Text(
//                   grams,
//                   style: TextStyle(
//                     color: Color(0xFF8C8C8C),
//                     fontSize: 16.sp,
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w400,
//                     height: 1.5,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         UIHelper.verticalSpace(12.h),
//
//         // Progress Bar
//         Stack(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 8.h,
//               decoration: BoxDecoration(
//                 color: Color(0xFF454545),
//                 borderRadius: BorderRadius.circular(20.r),
//               ),
//             ),
//             Container(
//               width: 295.w * progress,
//               height: 8.h,
//               decoration: BoxDecoration(
//                 color: progressColor,
//                 borderRadius: BorderRadius.circular(20.r),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
