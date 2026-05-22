part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class RegisterLoading extends RegisterState {}
final class RegisterSuccess extends RegisterState {
  final ResponseUserModel userModel ;
  RegisterSuccess(this.userModel);
}
final class RegisterError extends RegisterState {
  final String messageError ;
  RegisterError(this.messageError);
}
