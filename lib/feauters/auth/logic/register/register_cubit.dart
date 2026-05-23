import 'package:bloc/bloc.dart';
import 'package:doctor_app_advanced/feauters/auth/data/models/register_request_model.dart';
import 'package:doctor_app_advanced/feauters/auth/data/models/response_user_model.dart';
import 'package:doctor_app_advanced/feauters/auth/data/repo/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo authRepo ;
  RegisterCubit(this.authRepo) : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void register ()async{
    emit(RegisterLoading());

    RegisterRequestModel registerRequestModel =RegisterRequestModel(
        phone: phoneController.text,
        gender: genderController.text,
        confirmPassword: confirmPasswordController.text,
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text
    );

    final response = await authRepo.register(registerRequestModel);

    return response.fold(
            (errorMessage){
              emit(RegisterError(errorMessage));
            },
            (user){
              emit(RegisterSuccess(user));
            }
    );

  }
  @override
  Future<void> close() {

    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    return super.close();
  }

}

