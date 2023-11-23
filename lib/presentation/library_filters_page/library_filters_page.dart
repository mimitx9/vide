import 'bloc/library_filters_bloc.dart';
import 'models/library_filters_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LibraryFiltersPage extends StatefulWidget {
  const LibraryFiltersPage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryFiltersPageState createState() => LibraryFiltersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryFiltersBloc>(
      create: (context) => LibraryFiltersBloc(LibraryFiltersState(
        libraryFiltersModelObj: LibraryFiltersModel(),
      ))
        ..add(LibraryFiltersInitialEvent()),
      child: LibraryFiltersPage(),
    );
  }
}

class LibraryFiltersPageState extends State<LibraryFiltersPage>
    with AutomaticKeepAliveClientMixin<LibraryFiltersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Column(
            children: [
              SizedBox(height: 34.v),
              _buildLocation1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return BlocSelector<LibraryFiltersBloc, LibraryFiltersState,
        TextEditingController?>(
      selector: (state) => state.locationController,
      builder: (context, locationController) {
        return CustomTextFormField(
          controller: locationController,
          hintText: "lbl_t_t_c".tr,
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
          borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryTL101,
          fillColor: theme.colorScheme.onPrimary.withOpacity(0.5),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildThnpht(BuildContext context) {
    return BlocSelector<LibraryFiltersBloc, LibraryFiltersState,
        TextEditingController?>(
      selector: (state) => state.thnphtController,
      builder: (context, thnphtController) {
        return CustomTextFormField(
          controller: thnphtController,
          hintText: "lbl_t_h_n_45_ph_t".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhtting(BuildContext context) {
    return BlocSelector<LibraryFiltersBloc, LibraryFiltersState,
        TextEditingController?>(
      selector: (state) => state.phttingController,
      builder: (context, phttingController) {
        return CustomTextFormField(
          controller: phttingController,
          hintText: "msg_45_ph_t_2_ti_ng".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTing(BuildContext context) {
    return BlocSelector<LibraryFiltersBloc, LibraryFiltersState,
        TextEditingController?>(
      selector: (state) => state.tingController,
      builder: (context, tingController) {
        return CustomTextFormField(
          controller: tingController,
          hintText: "lbl_2_4_ti_ng".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTrnting(BuildContext context) {
    return BlocSelector<LibraryFiltersBloc, LibraryFiltersState,
        TextEditingController?>(
      selector: (state) => state.trntingController,
      builder: (context, trntingController) {
        return CustomTextFormField(
          controller: trntingController,
          hintText: "lbl_tr_n_4_ti_ng".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLocation1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          _buildLocation(context),
          SizedBox(height: 15.v),
          _buildThnpht(context),
          SizedBox(height: 15.v),
          _buildPhtting(context),
          SizedBox(height: 15.v),
          _buildTing(context),
          SizedBox(height: 15.v),
          _buildTrnting(context),
        ],
      ),
    );
  }
}
