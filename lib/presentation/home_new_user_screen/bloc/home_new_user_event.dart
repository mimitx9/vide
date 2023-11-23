// ignore_for_file: must_be_immutable

part of 'home_new_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeNewUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeNewUserEvent extends Equatable {}

/// Event that is dispatched when the HomeNewUser widget is first created.
class HomeNewUserInitialEvent extends HomeNewUserEvent {
  @override
  List<Object?> get props => [];
}
