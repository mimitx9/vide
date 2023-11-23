import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_search_screen/models/library_search_model.dart';
part 'library_search_event.dart';
part 'library_search_state.dart';

/// A bloc that manages the state of a LibrarySearch according to the event that is dispatched to it.
class LibrarySearchBloc extends Bloc<LibrarySearchEvent, LibrarySearchState> {
  LibrarySearchBloc(LibrarySearchState initialState) : super(initialState) {
    on<LibrarySearchInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LibrarySearchState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LibrarySearchState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  _onInitialize(
    LibrarySearchInitialEvent event,
    Emitter<LibrarySearchState> emit,
  ) async {
    emit(state.copyWith(
      unionController: TextEditingController(),
      radioGroup: "",
      radioGroup1: "",
    ));
  }
}
