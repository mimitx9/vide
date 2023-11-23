// ignore_for_file: must_be_immutable

part of 'library_search_result_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibrarySearchResult widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibrarySearchResultEvent extends Equatable {}

/// Event that is dispatched when the LibrarySearchResult widget is first created.
class LibrarySearchResultInitialEvent extends LibrarySearchResultEvent {
  @override
  List<Object?> get props => [];
}
