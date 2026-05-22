import 'package:doctor_app_advanced/core/routing/routes.dart';
import 'package:doctor_app_advanced/core/shared_widgets/custom_elevated_button.dart';
import 'package:doctor_app_advanced/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:doctor_app_advanced/feauters/auth/login/widgets/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
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
                Text("Create Account",style: AppStyles.font24Blue,),
                SizedBox(height: 8.h,),
                Text("Sign up now and start exploring all that our\napp has to offer. We're excited to welcome you to our community!",style: AppStyles.font14Grey,),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      SizedBox(height: 30.h,),
                      CustomTextFormField(hint: Text("Name",),),
                      SizedBox(height: 16.h,),
                      CustomTextFormField(hint: Text("Email",),),
                      SizedBox(height: 16.h,),
                      CustomTextFormField(hint: Text("Phone",),),
                      SizedBox(height: 16.h,),
                      CustomTextFormField(hint: Text("Gender",),),
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
                      SizedBox(height: 16.h,),
                      CustomTextFormField(hint: Text("Confirm Password",),
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
                      SizedBox(height: 32.h,),
                      CustomElevatedButton(text: "Create Account",
                        onPressed: (){
                          Navigator.pushNamed(context, Routes.homeScreen);
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50.h,),
                PrivacyPolicy(),
                SizedBox(height: 24.h,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
