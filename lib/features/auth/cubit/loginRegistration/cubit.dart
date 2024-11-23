import 'package:book_store/features/auth/data/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'states.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthSettings authSettings;
  RegisterCubit(this.authSettings) : super(RegisterInitial());

  void registerUser({required String phoneNumber,required String email, required String password,required String confirmPassword,required String firstName,required String lastName, }) async {
    emit(RegisterLoading());
    try {
      await authSettings.register(phoneNumber, email, email, password, confirmPassword, firstName, lastName);
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure('Registration failed. Please try again.'));
    }
  }

  void loginUser({required String password,required String username}) async {
    emit(LoginLoading());
    try {
      await authSettings.login(username, password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure('Login failed. Please try again.'));
    }
  }
}
