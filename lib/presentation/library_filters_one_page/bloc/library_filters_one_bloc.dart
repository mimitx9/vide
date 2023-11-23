import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_filters_one_page/models/library_filters_one_model.dart';
part 'library_filters_one_event.dart';
part 'library_filters_one_state.dart';

/// A bloc that manages the state of a LibraryFiltersOne according to the event that is dispatched to it.
class LibraryFiltersOneBloc
    extends Bloc<LibraryFiltersOneEvent, LibraryFiltersOneState> {
  LibraryFiltersOneBloc(LibraryFiltersOneState initialState)
      : super(initialState) {
    on<LibraryFiltersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryFiltersOneInitialEvent event,
    Emitter<LibraryFiltersOneState> emit,
  ) async {}
}
