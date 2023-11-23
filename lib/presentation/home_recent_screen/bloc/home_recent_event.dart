// ignore_for_file: must_be_immutable

part of 'home_recent_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeRecent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeRecentEvent extends Equatable {}

/// Event that is dispatched when the HomeRecent widget is first created.
class HomeRecentInitialEvent extends HomeRecentEvent {
  @override
  List<Object?> get props => [];
}
