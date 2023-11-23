import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_search_result_two_page/models/library_search_result_two_model.dart';
part 'library_search_result_two_event.dart';
part 'library_search_result_two_state.dart';

/// A bloc that manages the state of a LibrarySearchResultTwo according to the event that is dispatched to it.
class LibrarySearchResultTwoBloc
    extends Bloc<LibrarySearchResultTwoEvent, LibrarySearchResultTwoState> {
  LibrarySearchResultTwoBloc(LibrarySearchResultTwoState initialState)
      : super(initialState) {
    on<LibrarySearchResultTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibrarySearchResultTwoInitialEvent event,
    Emitter<LibrarySearchResultTwoState> emit,
  ) async {}
}
