import 'package:doctor_app_advanced/core/shared_widgets/custom_elevated_button.dart';
import 'package:doctor_app_advanced/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:doctor_app_advanced/feauters/auth/login/widgets/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/already_have_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
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
                Form(
                  key: formkey,
                  child: Column(
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
                      SizedBox(height: 22.h,),
                      Align(
                        alignment: Alignment.centerRight,
                          child: Text("Forgot Password?",style: AppStyles.font14Blue,)
                      ),
                      SizedBox(height: 32.h,),
                      CustomElevatedButton(text: "Login",
                       onPressed: (){},
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50.h,),
                PrivacyPolicy(),
                SizedBox(height: 24.h,),
                Align(alignment: Alignment.center,
                    child: AlreadyHaveAccount()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
