import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_one_page/models/library_one_model.dart';
part 'library_one_event.dart';
part 'library_one_state.dart';

/// A bloc that manages the state of a LibraryOne according to the event that is dispatched to it.
class LibraryOneBloc extends Bloc<LibraryOneEvent, LibraryOneState> {
  LibraryOneBloc(LibraryOneState initialState) : super(initialState) {
    on<LibraryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryOneInitialEvent event,
    Emitter<LibraryOneState> emit,
  ) async {}
}
