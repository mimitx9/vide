// ignore_for_file: must_be_immutable

part of 'library_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LibraryTabContainer widget is first created.
class LibraryTabContainerInitialEvent extends LibraryTabContainerEvent {
  @override
  List<Object?> get props => [];
}
