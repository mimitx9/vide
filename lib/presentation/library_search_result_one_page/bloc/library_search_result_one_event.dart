// ignore_for_file: must_be_immutable

part of 'library_search_result_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibrarySearchResultOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibrarySearchResultOneEvent extends Equatable {}

/// Event that is dispatched when the LibrarySearchResultOne widget is first created.
class LibrarySearchResultOneInitialEvent extends LibrarySearchResultOneEvent {
  @override
  List<Object?> get props => [];
}
