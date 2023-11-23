import 'bloc/library_search_bloc.dart';
import 'models/library_search_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_radio_button.dart';
import 'package:onito_s_application1/widgets/custom_text_form_field.dart';

class LibrarySearchScreen extends StatelessWidget {
  const LibrarySearchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LibrarySearchBloc>(
      create: (context) => LibrarySearchBloc(LibrarySearchState(
        librarySearchModelObj: LibrarySearchModel(),
      ))
        ..add(LibrarySearchInitialEvent()),
      child: LibrarySearchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 34.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<LibrarySearchBloc, LibrarySearchState,
                  TextEditingController?>(
                selector: (state) => state.unionController,
                builder: (context, unionController) {
                  return CustomTextFormField(
                    controller: unionController,
                    hintText: "lbl_t_m_ki_m".tr,
                    hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUnionPrimary,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
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
                    borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                  );
                },
              ),
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(right: 21.h),
                child: _buildVectorThirtyEight(
                  context,
                  message: "msg_clinical_video_root".tr,
                ),
              ),
              SizedBox(height: 26.v),
              _buildTransferringTheRow(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(right: 21.h),
                child: _buildVectorThirtyEight(
                  context,
                  message: "msg_transferring_the".tr,
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(right: 21.h),
                child: _buildVectorThirtyEight(
                  context,
                  message: "msg_treatment_planning".tr,
                ),
              ),
              SizedBox(height: 26.v),
              _buildTreatmentPlanningRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildProfileColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransferringTheRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 21.h),
      child: Row(
        children: [
          Expanded(
            child: BlocSelector<LibrarySearchBloc, LibrarySearchState, String?>(
              selector: (state) => state.radioGroup,
              builder: (context, radioGroup) {
                return CustomRadioButton(
                  text: "msg_transferring_the2".tr,
                  value: "msg_transferring_the2".tr ?? "",
                  groupValue: radioGroup,
                  textStyle: theme.textTheme.bodyMedium,
                  onChange: (value) {
                    context
                        .read<LibrarySearchBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  },
                );
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnionPrimary,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 33.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTreatmentPlanningRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 21.h),
      child: Row(
        children: [
          Expanded(
            child: BlocSelector<LibrarySearchBloc, LibrarySearchState, String?>(
              selector: (state) => state.radioGroup1,
              builder: (context, radioGroup1) {
                return CustomRadioButton(
                  text: "msg_treatment_planning2".tr,
                  value: "msg_treatment_planning2".tr ?? "",
                  groupValue: radioGroup1,
                  textStyle: theme.textTheme.bodyMedium,
                  onChange: (value) {
                    context
                        .read<LibrarySearchBloc>()
                        .add(ChangeRadioButton1Event(value: value));
                  },
                );
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnionPrimary,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 92.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 89.h,
        right: 92.h,
        bottom: 9.v,
      ),
      decoration: AppDecoration.fillBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgProfile,
                    height: 20.v,
                    width: 22.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 18.v,
                  width: 23.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_home".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                    ),
                  ),
                ),
                Text(
                  "lbl_library".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVectorThirtyEight(
    BuildContext context, {
    required String message,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 18.v,
          ),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector38,
            height: 3.adaptSize,
            width: 3.adaptSize,
            alignment: Alignment.topRight,
          ),
        ),
        Expanded(
          child: Container(
            width: 285.h,
            margin: EdgeInsets.only(left: 19.h),
            child: Text(
              message,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgUnionPrimary,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(bottom: 17.v),
        ),
      ],
    );
  }
}
