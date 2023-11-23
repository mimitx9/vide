// ignore_for_file: must_be_immutable

part of 'home_new_user_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeNewUserOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeNewUserOneContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeNewUserOneContainer widget is first created.
class HomeNewUserOneContainerInitialEvent extends HomeNewUserOneContainerEvent {
  @override
  List<Object?> get props => [];
}
