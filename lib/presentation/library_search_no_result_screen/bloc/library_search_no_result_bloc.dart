import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_search_no_result_screen/models/library_search_no_result_model.dart';
part 'library_search_no_result_event.dart';
part 'library_search_no_result_state.dart';

/// A bloc that manages the state of a LibrarySearchNoResult according to the event that is dispatched to it.
class LibrarySearchNoResultBloc
    extends Bloc<LibrarySearchNoResultEvent, LibrarySearchNoResultState> {
  LibrarySearchNoResultBloc(LibrarySearchNoResultState initialState)
      : super(initialState) {
    on<LibrarySearchNoResultInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibrarySearchNoResultInitialEvent event,
    Emitter<LibrarySearchNoResultState> emit,
  ) async {
    emit(state.copyWith(
      unionController: TextEditingController(),
    ));
  }
}
