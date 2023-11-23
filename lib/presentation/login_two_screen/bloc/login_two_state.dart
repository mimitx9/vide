// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

/// Represents the state of LoginTwo in the application.
class LoginTwoState extends Equatable {
  LoginTwoState({
    this.mobileNoController,
    this.settingsController,
    this.emailController,
    this.htnController,
    this.isShowPassword = true,
    this.loginTwoModelObj,
  });

  TextEditingController? mobileNoController;

  TextEditingController? settingsController;

  TextEditingController? emailController;

  TextEditingController? htnController;

  LoginTwoModel? loginTwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        mobileNoController,
        settingsController,
        emailController,
        htnController,
        isShowPassword,
        loginTwoModelObj,
      ];
  LoginTwoState copyWith({
    TextEditingController? mobileNoController,
    TextEditingController? settingsController,
    TextEditingController? emailController,
    TextEditingController? htnController,
    bool? isShowPassword,
    LoginTwoModel? loginTwoModelObj,
  }) {
    return LoginTwoState(
      mobileNoController: mobileNoController ?? this.mobileNoController,
      settingsController: settingsController ?? this.settingsController,
      emailController: emailController ?? this.emailController,
      htnController: htnController ?? this.htnController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginTwoModelObj: loginTwoModelObj ?? this.loginTwoModelObj,
    );
  }
}
