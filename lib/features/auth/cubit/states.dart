part of 'cubit.dart';


class RegisterState {}
class RegisterInitial extends RegisterState {}
class RegisterLoading extends RegisterState {}
class RegisterSuccess extends RegisterState {}
class RegisterFailure extends RegisterState {
  final String errorMessage;
  RegisterFailure(this.errorMessage);
}
class LoginLoading extends RegisterState {}
class LoginSuccess extends RegisterState {}
class LoginFailure extends RegisterState {
  final String errorMessage;
  LoginFailure(this.errorMessage);
}
