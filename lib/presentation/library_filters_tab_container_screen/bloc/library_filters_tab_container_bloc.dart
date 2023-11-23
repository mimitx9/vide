import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_filters_tab_container_screen/models/library_filters_tab_container_model.dart';
part 'library_filters_tab_container_event.dart';
part 'library_filters_tab_container_state.dart';

/// A bloc that manages the state of a LibraryFiltersTabContainer according to the event that is dispatched to it.
class LibraryFiltersTabContainerBloc extends Bloc<
    LibraryFiltersTabContainerEvent, LibraryFiltersTabContainerState> {
  LibraryFiltersTabContainerBloc(LibraryFiltersTabContainerState initialState)
      : super(initialState) {
    on<LibraryFiltersTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryFiltersTabContainerInitialEvent event,
    Emitter<LibraryFiltersTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      menuController: TextEditingController(),
    ));
  }
}
