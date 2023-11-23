// ignore_for_file: must_be_immutable

part of 'home_scroll_down_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScrollDownOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScrollDownOneEvent extends Equatable {}

/// Event that is dispatched when the HomeScrollDownOne widget is first created.
class HomeScrollDownOneInitialEvent extends HomeScrollDownOneEvent {
  @override
  List<Object?> get props => [];
}
