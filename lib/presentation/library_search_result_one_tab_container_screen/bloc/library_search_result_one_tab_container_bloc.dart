import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_search_result_one_tab_container_screen/models/library_search_result_one_tab_container_model.dart';
part 'library_search_result_one_tab_container_event.dart';
part 'library_search_result_one_tab_container_state.dart';

/// A bloc that manages the state of a LibrarySearchResultOneTabContainer according to the event that is dispatched to it.
class LibrarySearchResultOneTabContainerBloc extends Bloc<
    LibrarySearchResultOneTabContainerEvent,
    LibrarySearchResultOneTabContainerState> {
  LibrarySearchResultOneTabContainerBloc(
      LibrarySearchResultOneTabContainerState initialState)
      : super(initialState) {
    on<LibrarySearchResultOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibrarySearchResultOneTabContainerInitialEvent event,
    Emitter<LibrarySearchResultOneTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      unionController: TextEditingController(),
    ));
  }
}
