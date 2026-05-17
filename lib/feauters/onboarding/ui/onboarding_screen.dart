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
          ],
        ),
      ),
    );
  }
}
