import 'package:doctor_app_advanced/core/routing/routes.dart';
import 'package:doctor_app_advanced/core/shared_widgets/custom_elevated_button.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doctor_image_and_text.dart';
import '../widgets/logo_and_name.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 21.h,),
            const LogoAndName(),
            SizedBox(height: 30.h,),
            DoctorImageAndText(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    style: AppStyles.font14Grey,textAlign: TextAlign.center,),

                ],
              ),
            ),
            SizedBox(height: 32.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: CustomElevatedButton(
                  text: "Get Started",
                  onPressed: (){
                    Navigator.pushNamed(context, Routes.loginScreen);
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
