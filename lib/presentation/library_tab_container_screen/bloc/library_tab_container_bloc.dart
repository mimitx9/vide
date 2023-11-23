import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_tab_container_screen/models/library_tab_container_model.dart';
part 'library_tab_container_event.dart';
part 'library_tab_container_state.dart';

/// A bloc that manages the state of a LibraryTabContainer according to the event that is dispatched to it.
class LibraryTabContainerBloc
    extends Bloc<LibraryTabContainerEvent, LibraryTabContainerState> {
  LibraryTabContainerBloc(LibraryTabContainerState initialState)
      : super(initialState) {
    on<LibraryTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryTabContainerInitialEvent event,
    Emitter<LibraryTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
