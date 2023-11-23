// ignore_for_file: must_be_immutable

part of 'home_scroll_down_one_bloc.dart';

/// Represents the state of HomeScrollDownOne in the application.
class HomeScrollDownOneState extends Equatable {
  HomeScrollDownOneState({this.homeScrollDownOneModelObj});

  HomeScrollDownOneModel? homeScrollDownOneModelObj;

  @override
  List<Object?> get props => [
        homeScrollDownOneModelObj,
      ];
  HomeScrollDownOneState copyWith(
      {HomeScrollDownOneModel? homeScrollDownOneModelObj}) {
    return HomeScrollDownOneState(
      homeScrollDownOneModelObj:
          homeScrollDownOneModelObj ?? this.homeScrollDownOneModelObj,
    );
  }
}
