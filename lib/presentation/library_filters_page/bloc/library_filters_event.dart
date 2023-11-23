// ignore_for_file: must_be_immutable

part of 'library_filters_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryFilters widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryFiltersEvent extends Equatable {}

/// Event that is dispatched when the LibraryFilters widget is first created.
class LibraryFiltersInitialEvent extends LibraryFiltersEvent {
  @override
  List<Object?> get props => [];
}
