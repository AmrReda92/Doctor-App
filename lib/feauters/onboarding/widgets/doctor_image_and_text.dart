import 'package:doctor_app_advanced/core/images/app_images.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.backLogo),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withValues(alpha: 0.0),
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14,.4],
            ),
          ),
            child: Image.asset(AppImages.doctor),
        ),
        Positioned(
            bottom: 25.h,
            right: 0,
            left: 0,
            child: Text("Best Doctor\nAppointment App",textAlign: TextAlign.center,style:AppStyles.font32Blue.copyWith(height: 1.4.h))),
      ],
    );
  }
}
