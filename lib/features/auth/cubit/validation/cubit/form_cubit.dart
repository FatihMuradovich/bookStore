// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:book_store/features/auth/cubit/validation/cubit/form_state.dart';

class FormCubit extends Cubit<FormCustomState> {
  FormCubit() : super(const FormCustomState());

  void firstNameChanged(String firstName) {
    final isValid = firstName.isNotEmpty;
    emit(state.copyWith(
      firstName: firstName,
      isFirstNameValid: isValid,
      isFormValid: _isFormValid(
        firstName: firstName,
        lastName: state.lastName,
        phoneNumber: state.phoneNumber,
        password: state.password,
      ),
    ));
  }

  void lastNameChanged(String lastName) {
    final isValid = lastName.isNotEmpty;
    emit(state.copyWith(
      lastName: lastName,
      isLastNameValid: isValid,
      isFormValid: _isFormValid(
        firstName: state.firstName,
        lastName: lastName,
        phoneNumber: state.phoneNumber,
        password: state.password,
      ),
    ));
  }

  void phoneNumberChanged(String phoneNumber) {
    final isValid = RegExp(r'^\d{10}$').hasMatch(phoneNumber);
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      isPhoneNumberValid: isValid,
      isFormValid: _isFormValid(
        firstName: state.firstName,
        lastName: state.lastName,
        phoneNumber: phoneNumber,
        password: state.password,
      ),
    ));
  }

  void passwordChanged(String password) {
    final isValid = password.length >= 6;
    emit(state.copyWith(
      password: password,
      isPasswordValid: isValid,
      isFormValid: _isFormValid(
        firstName: state.firstName,
        lastName: state.lastName,
        phoneNumber: state.phoneNumber,
        password: password,
      ),
    ));
  }

  void submitForm() {
    if (state.isFormValid) {
      emit(state.copyWith(isSubmitting: true));
      // Simulate form submission delay
      Future.delayed(const Duration(seconds: 2), () {
        emit(state.copyWith(isSubmitting: false));
      });
    }
  }

  bool _isFormValid({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String password,
  }) {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        RegExp(r'^\d{10}$').hasMatch(phoneNumber) &&
        password.length >= 6;
  }
}