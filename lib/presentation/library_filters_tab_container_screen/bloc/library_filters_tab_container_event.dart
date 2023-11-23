// ignore_for_file: must_be_immutable

part of 'library_filters_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryFiltersTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryFiltersTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LibraryFiltersTabContainer widget is first created.
class LibraryFiltersTabContainerInitialEvent
    extends LibraryFiltersTabContainerEvent {
  @override
  List<Object?> get props => [];
}
