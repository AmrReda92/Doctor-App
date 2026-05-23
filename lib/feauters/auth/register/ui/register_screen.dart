import 'package:doctor_app_advanced/core/helpers/validation_service.dart';
import 'package:doctor_app_advanced/core/routing/routes.dart';
import 'package:doctor_app_advanced/core/shared_widgets/custom_elevated_button.dart';
import 'package:doctor_app_advanced/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app_advanced/core/theming/app_styles.dart';
import 'package:doctor_app_advanced/feauters/auth/logic/register/register_cubit.dart';
import 'package:doctor_app_advanced/feauters/auth/login/widgets/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: AppStyles.font24Blue),
                SizedBox(height: 8.h),
                Text(
                  "Sign up now and start exploring all that our\napp has to offer. We're excited to welcome you to our community!",
                  style: AppStyles.font14Grey,
                ),
                BlocConsumer<RegisterCubit, RegisterState>(
                  listener: (context, state) {

                    if(state is RegisterSuccess){
                       ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Account created successfully!"), backgroundColor: Colors.green,),
                      );
                      Navigator.pushNamed(context, Routes.loginScreen);
                    }else if(state is RegisterError){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.messageError))
                      );
                    }

                  },
                  builder: (context, state) {
                    if(state is RegisterLoading){
                      return Center(child: CircularProgressIndicator());
                    }
                    return Form(
                      key: formkey,
                      child: Column(
                        children: [
                          SizedBox(height: 30.h),
                          CustomTextFormField(
                            hint: Text("Name"),
                            validator: ValidationService.validateName,
                            controller: RegisterCubit.get(
                              context,
                            ).nameController,
                          ),
                          SizedBox(height: 16.h),
                          CustomTextFormField(
                            hint: Text("Email"),
                            validator: ValidationService.validateEmail,
                            controller: RegisterCubit.get(
                              context,
                            ).emailController,
                          ),
                          SizedBox(height: 16.h),
                          CustomTextFormField(
                            hint: Text("Phone"),
                            validator: ValidationService.validatePhoneNumber,
                            controller: RegisterCubit.get(
                              context,
                            ).phoneController,
                          ),
                          SizedBox(height: 16.h),
                          CustomTextFormField(
                            hint: Text("Gender"),
                            controller: RegisterCubit.get(
                              context,
                            ).genderController,
                          ),
                          SizedBox(height: 16.h),
                          CustomTextFormField(
                            hint: Text("Password"),
                            validator: ValidationService.validatePassword,
                            controller: RegisterCubit.get(
                              context,
                            ).passwordController,
                            isObsecureText: isObsecureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObsecureText = !isObsecureText;
                                });
                              },
                              child: Icon(
                                isObsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          CustomTextFormField(
                            hint: Text("Confirm Password"),
                            validator: (v) {
                              return ValidationService.validateConfirmPassword(
                                value: v.toString(),
                                password: RegisterCubit.get(
                                  context,
                                ).passwordController.text,
                              );
                            },
                            controller: RegisterCubit.get(
                              context,
                            ).confirmPasswordController,
                            isObsecureText: isObsecureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObsecureText = !isObsecureText;
                                });
                              },
                              child: Icon(
                                isObsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.h),
                          SizedBox(height: 32.h),
                          CustomElevatedButton(
                            text: "Create Account",
                            onPressed: () {
                              if(formkey.currentState!.validate()){
                                RegisterCubit.get(context).register();
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 50.h),
                PrivacyPolicy(),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
