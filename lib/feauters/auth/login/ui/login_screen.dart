import 'package:doctor_app_advanced/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back",style: AppStyles.font24Blue,),
                SizedBox(height: 8.h,),
                Text("We're excited to have you back, can't wait to\nsee what you've been up to since you last logged in.",style: AppStyles.font14Grey,),
                Column(
                  children: [
                    SizedBox(height: 30.h,),
                    CustomTextFormField(hint: Text("Email",),),
                    SizedBox(height: 16.h,),
                    CustomTextFormField(hint: Text("Password",),
                      isObsecureText: isObsecureText,
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            isObsecureText=!isObsecureText;
                          });
                        },
                          child: Icon(isObsecureText? Icons.visibility_off : Icons.visibility)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
