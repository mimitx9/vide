// ignore_for_file: must_be_immutable

part of 'library_search_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibrarySearch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibrarySearchEvent extends Equatable {}

/// Event that is dispatched when the LibrarySearch widget is first created.
class LibrarySearchInitialEvent extends LibrarySearchEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LibrarySearchEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends LibrarySearchEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
