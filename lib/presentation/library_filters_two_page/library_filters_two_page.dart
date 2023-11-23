import 'bloc/library_filters_two_bloc.dart';
import 'models/library_filters_two_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LibraryFiltersTwoPage extends StatefulWidget {
  const LibraryFiltersTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryFiltersTwoPageState createState() => LibraryFiltersTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryFiltersTwoBloc>(
      create: (context) => LibraryFiltersTwoBloc(LibraryFiltersTwoState(
        libraryFiltersTwoModelObj: LibraryFiltersTwoModel(),
      ))
        ..add(LibraryFiltersTwoInitialEvent()),
      child: LibraryFiltersTwoPage(),
    );
  }
}

class LibraryFiltersTwoPageState extends State<LibraryFiltersTwoPage>
    with AutomaticKeepAliveClientMixin<LibraryFiltersTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 5.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          _buildLocation(context),
                          SizedBox(height: 15.v),
                          _buildDentalHygiene(context),
                          SizedBox(height: 15.v),
                          _buildDentalMaterials(context),
                          SizedBox(height: 15.v),
                          _buildGroup197(context),
                          SizedBox(height: 15.v),
                          _buildDentalTechnology(context),
                          SizedBox(height: 15.v),
                          _buildEndodontics(context),
                          SizedBox(height: 15.v),
                          _buildEstheticDentristry(context),
                          SizedBox(height: 15.v),
                          _buildImplantology(context),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: SizedBox(
                          height: 585.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: theme.colorScheme.onPrimary,
                            indent: 17.h,
                            endIndent: 462.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.locationController,
      builder: (context, locationController) {
        return CustomTextFormField(
          controller: locationController,
          hintText: "lbl_all".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 25.v, 22.h, 25.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocationOrange400,
              height: 9.v,
              width: 12.h,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 60.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 22.h,
            top: 20.v,
            bottom: 20.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDentalHygiene(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.dentalHygieneController,
      builder: (context, dentalHygieneController) {
        return CustomTextFormField(
          controller: dentalHygieneController,
          hintText: "lbl_dental_hygiene".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDentalMaterials(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.dentalMaterialsController,
      builder: (context, dentalMaterialsController) {
        return CustomTextFormField(
          controller: dentalMaterialsController,
          hintText: "msg_dental_materials".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup197(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.group197Controller,
      builder: (context, group197Controller) {
        return CustomTextFormField(
          controller: group197Controller,
          hintText: "msg_dental_nursing_and".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDentalTechnology(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.dentalTechnologyController,
      builder: (context, dentalTechnologyController) {
        return CustomTextFormField(
          controller: dentalTechnologyController,
          hintText: "msg_dental_technology".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEndodontics(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.endodonticsController,
      builder: (context, endodonticsController) {
        return CustomTextFormField(
          controller: endodonticsController,
          hintText: "lbl_endodontics".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEstheticDentristry(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.estheticDentristryController,
      builder: (context, estheticDentristryController) {
        return CustomTextFormField(
          controller: estheticDentristryController,
          hintText: "msg_esthetic_dentristry".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildImplantology(BuildContext context) {
    return BlocSelector<LibraryFiltersTwoBloc, LibraryFiltersTwoState,
        TextEditingController?>(
      selector: (state) => state.implantologyController,
      builder: (context, implantologyController) {
        return CustomTextFormField(
          controller: implantologyController,
          hintText: "lbl_implantology".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }
}
