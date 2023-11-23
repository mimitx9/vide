// ignore_for_file: must_be_immutable

part of 'library_filters_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryFiltersTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryFiltersTwoEvent extends Equatable {}

/// Event that is dispatched when the LibraryFiltersTwo widget is first created.
class LibraryFiltersTwoInitialEvent extends LibraryFiltersTwoEvent {
  @override
  List<Object?> get props => [];
}
