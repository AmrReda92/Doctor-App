import 'package:doctor_app_advanced/core/theming/app_colors.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget hint ;
  final bool? isObsecureText;
  final Widget? suffixIcon ;
  const CustomTextFormField({super.key, required this.hint, this.suffixIcon, this.isObsecureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:isObsecureText?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintStyle:AppStyles.font14hintText,
        hint: hint,
        fillColor: AppColors.textFieldBackGround,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide(color:AppColors.textFieldOutline ),
          borderRadius: BorderRadius.circular(16.r)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:AppColors.textFieldOutline ),
          borderRadius: BorderRadius.circular(16.r)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:AppColors.primaryColor ),
          borderRadius: BorderRadius.circular(16.r)
        )
      )  ,
    );
  }
}
