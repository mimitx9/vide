// ignore_for_file: must_be_immutable

part of 'home_scroll_down_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScrollDown widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScrollDownEvent extends Equatable {}

/// Event that is dispatched when the HomeScrollDown widget is first created.
class HomeScrollDownInitialEvent extends HomeScrollDownEvent {
  @override
  List<Object?> get props => [];
}
