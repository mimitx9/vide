// ignore_for_file: must_be_immutable

part of 'home_scroll_down_bloc.dart';

/// Represents the state of HomeScrollDown in the application.
class HomeScrollDownState extends Equatable {
  HomeScrollDownState({this.homeScrollDownModelObj});

  HomeScrollDownModel? homeScrollDownModelObj;

  @override
  List<Object?> get props => [
        homeScrollDownModelObj,
      ];
  HomeScrollDownState copyWith({HomeScrollDownModel? homeScrollDownModelObj}) {
    return HomeScrollDownState(
      homeScrollDownModelObj:
          homeScrollDownModelObj ?? this.homeScrollDownModelObj,
    );
  }
}
