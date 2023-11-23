// ignore_for_file: must_be_immutable

part of 'home_new_user_one_bloc.dart';

/// Represents the state of HomeNewUserOne in the application.
class HomeNewUserOneState extends Equatable {
  HomeNewUserOneState({this.homeNewUserOneModelObj});

  HomeNewUserOneModel? homeNewUserOneModelObj;

  @override
  List<Object?> get props => [
        homeNewUserOneModelObj,
      ];
  HomeNewUserOneState copyWith({HomeNewUserOneModel? homeNewUserOneModelObj}) {
    return HomeNewUserOneState(
      homeNewUserOneModelObj:
          homeNewUserOneModelObj ?? this.homeNewUserOneModelObj,
    );
  }
}
