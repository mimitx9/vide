import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_page/models/library_model.dart';
part 'library_event.dart';
part 'library_state.dart';

/// A bloc that manages the state of a Library according to the event that is dispatched to it.
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc(LibraryState initialState) : super(initialState) {
    on<LibraryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryInitialEvent event,
    Emitter<LibraryState> emit,
  ) async {}
}
