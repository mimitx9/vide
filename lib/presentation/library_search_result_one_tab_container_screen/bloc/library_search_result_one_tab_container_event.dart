// ignore_for_file: must_be_immutable

part of 'library_search_result_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibrarySearchResultOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibrarySearchResultOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LibrarySearchResultOneTabContainer widget is first created.
class LibrarySearchResultOneTabContainerInitialEvent
    extends LibrarySearchResultOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
