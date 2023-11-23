// ignore_for_file: must_be_immutable

part of 'library_filters_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryFiltersOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryFiltersOneEvent extends Equatable {}

/// Event that is dispatched when the LibraryFiltersOne widget is first created.
class LibraryFiltersOneInitialEvent extends LibraryFiltersOneEvent {
  @override
  List<Object?> get props => [];
}
