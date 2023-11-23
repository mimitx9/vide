// ignore_for_file: must_be_immutable

part of 'home_new_user_bloc.dart';

/// Represents the state of HomeNewUser in the application.
class HomeNewUserState extends Equatable {
  HomeNewUserState({this.homeNewUserModelObj});

  HomeNewUserModel? homeNewUserModelObj;

  @override
  List<Object?> get props => [
        homeNewUserModelObj,
      ];
  HomeNewUserState copyWith({HomeNewUserModel? homeNewUserModelObj}) {
    return HomeNewUserState(
      homeNewUserModelObj: homeNewUserModelObj ?? this.homeNewUserModelObj,
    );
  }
}
