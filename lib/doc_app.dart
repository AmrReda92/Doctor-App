import 'package:doctor_app_advanced/core/routing/app_routes.dart';
import 'package:doctor_app_advanced/core/routing/routes.dart';
import 'package:doctor_app_advanced/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor
        ),
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: AppRoutes.generateRoute,
      
      ),
    );
  }
}
