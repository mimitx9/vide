import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_category_page/models/library_category_model.dart';
part 'library_category_event.dart';
part 'library_category_state.dart';

/// A bloc that manages the state of a LibraryCategory according to the event that is dispatched to it.
class LibraryCategoryBloc
    extends Bloc<LibraryCategoryEvent, LibraryCategoryState> {
  LibraryCategoryBloc(LibraryCategoryState initialState) : super(initialState) {
    on<LibraryCategoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryCategoryInitialEvent event,
    Emitter<LibraryCategoryState> emit,
  ) async {}
}
