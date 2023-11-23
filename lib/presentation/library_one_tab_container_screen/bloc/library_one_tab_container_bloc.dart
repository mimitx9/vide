import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_one_tab_container_screen/models/library_one_tab_container_model.dart';
part 'library_one_tab_container_event.dart';
part 'library_one_tab_container_state.dart';

/// A bloc that manages the state of a LibraryOneTabContainer according to the event that is dispatched to it.
class LibraryOneTabContainerBloc
    extends Bloc<LibraryOneTabContainerEvent, LibraryOneTabContainerState> {
  LibraryOneTabContainerBloc(LibraryOneTabContainerState initialState)
      : super(initialState) {
    on<LibraryOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryOneTabContainerInitialEvent event,
    Emitter<LibraryOneTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
