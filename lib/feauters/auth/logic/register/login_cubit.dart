import 'package:bloc/bloc.dart';
import 'package:doctor_app_advanced/feauters/auth/data/models/login_request_model.dart';
import 'package:doctor_app_advanced/feauters/auth/data/models/response_user_model.dart';
import 'package:doctor_app_advanced/feauters/auth/data/repo/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;
  LoginCubit(this.authRepo) : super(LoginInitial());

 static LoginCubit get(context) => BlocProvider.of(context);

 final TextEditingController emailController= TextEditingController();
 final TextEditingController passwordController= TextEditingController();

 void login ()async{
   emit(LoginLoading());

   LoginRequestModel loginRequestModel = LoginRequestModel(
       email: emailController.text,
       password: passwordController.text
   );

   final response = await authRepo.login(loginRequestModel);

   return response.fold(
       (error){
         emit(LoginError(error));
       },
       (user){
         emit(LoginSuccess(user));
       }
   );
 }

}
