// ignore_for_file: must_be_immutable

part of 'home_recent_bloc.dart';

/// Represents the state of HomeRecent in the application.
class HomeRecentState extends Equatable {
  HomeRecentState({this.homeRecentModelObj});

  HomeRecentModel? homeRecentModelObj;

  @override
  List<Object?> get props => [
        homeRecentModelObj,
      ];
  HomeRecentState copyWith({HomeRecentModel? homeRecentModelObj}) {
    return HomeRecentState(
      homeRecentModelObj: homeRecentModelObj ?? this.homeRecentModelObj,
    );
  }
}
