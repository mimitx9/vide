import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/librarysearchresultone_item_model.dart';
import 'package:onito_s_application1/presentation/library_search_result_one_page/models/library_search_result_one_model.dart';
part 'library_search_result_one_event.dart';
part 'library_search_result_one_state.dart';

/// A bloc that manages the state of a LibrarySearchResultOne according to the event that is dispatched to it.
class LibrarySearchResultOneBloc
    extends Bloc<LibrarySearchResultOneEvent, LibrarySearchResultOneState> {
  LibrarySearchResultOneBloc(LibrarySearchResultOneState initialState)
      : super(initialState) {
    on<LibrarySearchResultOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibrarySearchResultOneInitialEvent event,
    Emitter<LibrarySearchResultOneState> emit,
  ) async {
    emit(state.copyWith(
        librarySearchResultOneModelObj:
            state.librarySearchResultOneModelObj?.copyWith(
      librarysearchresultoneItemList: fillLibrarysearchresultoneItemList(),
    )));
  }

  List<LibrarysearchresultoneItemModel> fillLibrarysearchresultoneItemList() {
    return [
      LibrarysearchresultoneItemModel(
          image: ImageConstant.imgRectangle449,
          time: "19:45",
          cLINICALVIDEORoot:
              "CLINICAL VIDEO Root coverage - The Use of Connective Tissue and Emdogain"),
      LibrarysearchresultoneItemModel(
          image: ImageConstant.imgRectangle445,
          time: "19:45",
          cLINICALVIDEORoot:
              "CLINICAL VIDEO Full arch All-on-4 restorative steps for Immediate loading with c")
    ];
  }
}
