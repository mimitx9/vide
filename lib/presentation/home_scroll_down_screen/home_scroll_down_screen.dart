import 'bloc/home_scroll_down_bloc.dart';
import 'models/home_scroll_down_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_trailing_button.dart';
import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

class HomeScrollDownScreen extends StatelessWidget {
  const HomeScrollDownScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScrollDownBloc>(
      create: (context) => HomeScrollDownBloc(HomeScrollDownState(
        homeScrollDownModelObj: HomeScrollDownModel(),
      ))
        ..add(HomeScrollDownInitialEvent()),
      child: HomeScrollDownScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeScrollDownBloc, HomeScrollDownState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildTwoHundred(context),
                  SizedBox(height: 17.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 355.h,
                            margin: EdgeInsets.only(
                              left: 20.h,
                              right: 54.h,
                            ),
                            child: Text(
                              "msg_treatment_planning".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildButtonGeneralDentistry(context),
                          SizedBox(height: 51.v),
                          _buildView(context),
                          SizedBox(height: 16.v),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 387.h,
                              margin: EdgeInsets.only(
                                left: 20.h,
                                right: 22.h,
                              ),
                              child: Text(
                                "msg_transferring_the".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Row(
                              children: [
                                _buildButton2Videos(context),
                                _buildButtonImplantology(context),
                              ],
                            ),
                          ),
                          SizedBox(height: 51.v),
                          _buildView1(context),
                          SizedBox(height: 16.v),
                          Container(
                            width: 323.h,
                            margin: EdgeInsets.only(
                              left: 20.h,
                              right: 87.h,
                            ),
                            child: Text(
                              "msg_clinical_video_root".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Row(
                              children: [
                                _buildButton8Videos(context),
                                _buildButtonOrthodontics(context),
                              ],
                            ),
                          ),
                          SizedBox(height: 51.v),
                          _buildView2(context),
                          SizedBox(height: 18.v),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 390.h,
                              margin: EdgeInsets.symmetric(horizontal: 20.h),
                              child: Text(
                                "msg_treatment_planning".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 18.v),
                          _buildButtonGeneralDentistry1(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwoHundred(BuildContext context) {
    return SizedBox(
      height: 209.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle375209x430,
            height: 209.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomAppBar(
                  height: 125.v,
                  centerTitle: true,
                  title: Container(
                    height: 80.v,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 45.v),
                    child: Stack(
                      children: [
                        AppbarTitleImage(
                          imagePath: ImageConstant.imgRectangle37780x430,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20.h, 37.v, 236.h, 3.v),
                          child: Row(
                            children: [
                              AppbarTitleImage(
                                imagePath: ImageConstant.imgGroup594,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 65.h,
                                  top: 9.v,
                                  bottom: 5.v,
                                ),
                                child: Column(
                                  children: [
                                    AppbarSubtitleThree(
                                      text: "lbl_xu_t2".tr,
                                    ),
                                    SizedBox(height: 6.v),
                                    SizedBox(
                                      width: 64.h,
                                      child: Divider(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    AppbarSubtitleTwo(
                      text: "lbl_c_a_b_n".tr,
                      margin: EdgeInsets.fromLTRB(20.h, 47.v, 48.h, 12.v),
                    ),
                    AppbarTrailingButton(
                      margin: EdgeInsets.only(
                        left: 48.h,
                        top: 37.v,
                        right: 68.h,
                      ),
                    ),
                  ],
                  styleType: Style.bgGradientnameblack900nameblack900opacity0,
                ),
                SizedBox(height: 44.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 50.h,
                    margin: EdgeInsets.only(right: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_19_45".tr,
                      style: CustomTextStyles.bodyMedium_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonGeneralDentistry(BuildContext context) {
    return CustomElevatedButton(
      width: 121.h,
      text: "msg_general_dentistry".tr,
      margin: EdgeInsets.only(left: 20.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            2.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 258.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3751,
            height: 258.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 129.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.black900,
                        appTheme.black900.withOpacity(0),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 89.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 50.h,
                    margin: EdgeInsets.only(right: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_19_45".tr,
                      style: CustomTextStyles.bodyMedium_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton2Videos(BuildContext context) {
    return CustomElevatedButton(
      width: 85.h,
      text: "lbl_2_videos".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgComponent14,
          height: 12.v,
          width: 13.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonImplantology(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_implantology".tr,
      margin: EdgeInsets.only(left: 14.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            2.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView1(BuildContext context) {
    return SizedBox(
      height: 258.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle375,
            height: 258.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 129.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.black900,
                        appTheme.black900.withOpacity(0),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 89.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 50.h,
                    margin: EdgeInsets.only(right: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_19_45".tr,
                      style: CustomTextStyles.bodyMedium_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton8Videos(BuildContext context) {
    return CustomElevatedButton(
      width: 85.h,
      text: "lbl_8_videos".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgComponent14,
          height: 12.v,
          width: 13.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonOrthodontics(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_orthodontics".tr,
      margin: EdgeInsets.only(left: 14.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            2.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView2(BuildContext context) {
    return SizedBox(
      height: 258.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle375258x430,
            height: 258.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 129.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.black900,
                        appTheme.black900.withOpacity(0),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 89.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 50.h,
                    margin: EdgeInsets.only(right: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_19_45".tr,
                      style: CustomTextStyles.bodyMedium_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonGeneralDentistry1(BuildContext context) {
    return CustomElevatedButton(
      width: 121.h,
      text: "msg_general_dentistry".tr,
      margin: EdgeInsets.only(left: 20.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            2.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
    );
  }
}
