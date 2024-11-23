import 'package:equatable/equatable.dart';

class FormCustomState extends Equatable {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;

  final bool isFirstNameValid;
  final bool isLastNameValid;
  final bool isPhoneNumberValid;
  final bool isPasswordValid;
  final bool isFormValid;
  final bool isSubmitting;

  const FormCustomState({
    this.firstName = '',
    this.lastName = '',
    this.phoneNumber = '',
    this.password = '',
    this.isFirstNameValid = true,
    this.isLastNameValid = true,
    this.isPhoneNumberValid = true,
    this.isPasswordValid = true,
    this.isFormValid = false,
    this.isSubmitting = false,
  });

  FormCustomState copyWith({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? password,
    bool? isFirstNameValid,
    bool? isLastNameValid,
    bool? isPhoneNumberValid,
    bool? isPasswordValid,
    bool? isFormValid,
    bool? isSubmitting,
  }) {
    return FormCustomState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      isFirstNameValid: isFirstNameValid ?? this.isFirstNameValid,
      isLastNameValid: isLastNameValid ?? this.isLastNameValid,
      isPhoneNumberValid: isPhoneNumberValid ?? this.isPhoneNumberValid,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isFormValid: isFormValid ?? this.isFormValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phoneNumber,
        password,
        isFirstNameValid,
        isLastNameValid,
        isPhoneNumberValid,
        isPasswordValid,
        isFormValid,
        isSubmitting,
      ];
}
