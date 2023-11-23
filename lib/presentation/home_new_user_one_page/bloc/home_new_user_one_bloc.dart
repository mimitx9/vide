import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/close_item_model.dart';
import '../models/homenewuserone_item_model.dart';
import 'package:onito_s_application1/presentation/home_new_user_one_page/models/home_new_user_one_model.dart';
part 'home_new_user_one_event.dart';
part 'home_new_user_one_state.dart';

/// A bloc that manages the state of a HomeNewUserOne according to the event that is dispatched to it.
class HomeNewUserOneBloc
    extends Bloc<HomeNewUserOneEvent, HomeNewUserOneState> {
  HomeNewUserOneBloc(HomeNewUserOneState initialState) : super(initialState) {
    on<HomeNewUserOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    HomeNewUserOneInitialEvent event,
    Emitter<HomeNewUserOneState> emit,
  ) async {
    emit(state.copyWith(
        homeNewUserOneModelObj: state.homeNewUserOneModelObj?.copyWith(
      closeItemList: fillCloseItemList(),
      homenewuseroneItemList: fillHomenewuseroneItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<HomeNewUserOneState> emit,
  ) {
    List<CloseItemModel> newList =
        List<CloseItemModel>.from(state.homeNewUserOneModelObj!.closeItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        homeNewUserOneModelObj:
            state.homeNewUserOneModelObj?.copyWith(closeItemList: newList)));
  }

  List<CloseItemModel> fillCloseItemList() {
    return List.generate(2, (index) => CloseItemModel());
  }

  List<HomenewuseroneItemModel> fillHomenewuseroneItemList() {
    return [
      HomenewuseroneItemModel(
          image: ImageConstant.imgRectangle425,
          time: "19:45",
          treatmentPlanning:
              "Treatment Planning in the Digital Era - Digital Patient Concept",
          gb: "Gỡ bỏ"),
      HomenewuseroneItemModel(
          image: ImageConstant.imgRectangle449,
          time: "19:45",
          treatmentPlanning:
              "CLINICAL VIDEO Root coverage - The Use of Connective Tissue and Emdogain",
          gb: "Gỡ bỏ"),
      HomenewuseroneItemModel(
          image: ImageConstant.imgRectangle443,
          time: "19:45",
          treatmentPlanning:
              "Transferring the Ideal Soft Tissue Architecture to the Lab | Dr Giacomo Fabbri",
          gb: "Gỡ bỏ"),
      HomenewuseroneItemModel(
          image: ImageConstant.imgRectangle445,
          time: "19:45",
          treatmentPlanning:
              "CLINICAL VIDEO Full arch All-on-4 restorative steps for Immediate loading with c",
          gb: "Gỡ bỏ")
    ];
  }
}
