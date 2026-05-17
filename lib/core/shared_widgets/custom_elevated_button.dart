import 'package:doctor_app_advanced/core/theming/app_colors.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed ;
  final String text ;
  const CustomElevatedButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r)
        ),
        minimumSize: const Size(double.infinity, 56),
        backgroundColor: AppColors.primaryColor
      ),
        onPressed: onPressed
        , child: Text(text,style: AppStyles.font16WhiteSemi)
    );
  }
}
