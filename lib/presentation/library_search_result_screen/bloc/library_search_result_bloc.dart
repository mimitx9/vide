import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/librarysearchresult_item_model.dart';
import 'package:onito_s_application1/presentation/library_search_result_screen/models/library_search_result_model.dart';
part 'library_search_result_event.dart';
part 'library_search_result_state.dart';

/// A bloc that manages the state of a LibrarySearchResult according to the event that is dispatched to it.
class LibrarySearchResultBloc
    extends Bloc<LibrarySearchResultEvent, LibrarySearchResultState> {
  LibrarySearchResultBloc(LibrarySearchResultState initialState)
      : super(initialState) {
    on<LibrarySearchResultInitialEvent>(_onInitialize);
  }

  List<LibrarysearchresultItemModel> fillLibrarysearchresultItemList() {
    return [
      LibrarysearchresultItemModel(
          image: ImageConstant.imgRectangle449,
          time: "19:45",
          cLINICALVIDEORoot:
              "CLINICAL VIDEO Root coverage - The Use of Connective Tissue and Emdogain"),
      LibrarysearchresultItemModel(
          image: ImageConstant.imgRectangle445,
          time: "19:45",
          cLINICALVIDEORoot:
              "CLINICAL VIDEO Full arch All-on-4 restorative steps for Immediate loading with c")
    ];
  }

  _onInitialize(
    LibrarySearchResultInitialEvent event,
    Emitter<LibrarySearchResultState> emit,
  ) async {
    emit(state.copyWith(
      unionController: TextEditingController(),
    ));
    emit(state.copyWith(
        librarySearchResultModelObj:
            state.librarySearchResultModelObj?.copyWith(
      librarysearchresultItemList: fillLibrarysearchresultItemList(),
    )));
  }
}
