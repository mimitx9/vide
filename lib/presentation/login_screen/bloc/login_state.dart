// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.sinthoiController,
    this.loginModelObj,
  });

  TextEditingController? sinthoiController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        sinthoiController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? sinthoiController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      sinthoiController: sinthoiController ?? this.sinthoiController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
