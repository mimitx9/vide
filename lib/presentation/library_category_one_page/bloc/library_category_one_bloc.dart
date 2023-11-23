import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_category_one_page/models/library_category_one_model.dart';
part 'library_category_one_event.dart';
part 'library_category_one_state.dart';

/// A bloc that manages the state of a LibraryCategoryOne according to the event that is dispatched to it.
class LibraryCategoryOneBloc
    extends Bloc<LibraryCategoryOneEvent, LibraryCategoryOneState> {
  LibraryCategoryOneBloc(LibraryCategoryOneState initialState)
      : super(initialState) {
    on<LibraryCategoryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryCategoryOneInitialEvent event,
    Emitter<LibraryCategoryOneState> emit,
  ) async {}
}
