// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

/// Represents the state of LoginOne in the application.
class LoginOneState extends Equatable {
  LoginOneState({
    this.mobileNoController,
    this.settingsController,
    this.isShowPassword = true,
    this.loginOneModelObj,
  });

  TextEditingController? mobileNoController;

  TextEditingController? settingsController;

  LoginOneModel? loginOneModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        mobileNoController,
        settingsController,
        isShowPassword,
        loginOneModelObj,
      ];
  LoginOneState copyWith({
    TextEditingController? mobileNoController,
    TextEditingController? settingsController,
    bool? isShowPassword,
    LoginOneModel? loginOneModelObj,
  }) {
    return LoginOneState(
      mobileNoController: mobileNoController ?? this.mobileNoController,
      settingsController: settingsController ?? this.settingsController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
