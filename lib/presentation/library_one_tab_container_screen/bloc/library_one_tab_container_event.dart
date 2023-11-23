// ignore_for_file: must_be_immutable

part of 'library_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LibraryOneTabContainer widget is first created.
class LibraryOneTabContainerInitialEvent extends LibraryOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
