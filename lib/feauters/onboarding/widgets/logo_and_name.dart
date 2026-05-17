import 'package:doctor_app_advanced/core/images/app_images.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [
       SvgPicture.asset(AppImages.logo),
       SizedBox(width: 8.w,),
       Text("Docdoc",style: AppStyles.font24Black,)


     ]
    );
  }
}
