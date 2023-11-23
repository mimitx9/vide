// ignore_for_file: must_be_immutable

part of 'home_new_user_one_container_bloc.dart';

/// Represents the state of HomeNewUserOneContainer in the application.
class HomeNewUserOneContainerState extends Equatable {
  HomeNewUserOneContainerState({this.homeNewUserOneContainerModelObj});

  HomeNewUserOneContainerModel? homeNewUserOneContainerModelObj;

  @override
  List<Object?> get props => [
        homeNewUserOneContainerModelObj,
      ];
  HomeNewUserOneContainerState copyWith(
      {HomeNewUserOneContainerModel? homeNewUserOneContainerModelObj}) {
    return HomeNewUserOneContainerState(
      homeNewUserOneContainerModelObj: homeNewUserOneContainerModelObj ??
          this.homeNewUserOneContainerModelObj,
    );
  }
}
