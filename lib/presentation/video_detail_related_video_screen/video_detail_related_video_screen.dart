import 'bloc/video_detail_related_video_bloc.dart';
import 'models/video_detail_related_video_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';
import 'package:onito_s_application1/widgets/custom_icon_button.dart';

class VideoDetailRelatedVideoScreen extends StatelessWidget {
  const VideoDetailRelatedVideoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailRelatedVideoBloc>(
      create: (context) =>
          VideoDetailRelatedVideoBloc(VideoDetailRelatedVideoState(
        videoDetailRelatedVideoModelObj: VideoDetailRelatedVideoModel(),
      ))
            ..add(VideoDetailRelatedVideoInitialEvent()),
      child: VideoDetailRelatedVideoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailRelatedVideoBloc,
        VideoDetailRelatedVideoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildUnionStack(context),
                    SizedBox(height: 15.v),
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
                    _buildOrthodonticsButton(context),
                    SizedBox(height: 34.v),
                    _buildMoKhoaButton(context),
                    SizedBox(height: 49.v),
                    _buildFiveStack(context),
                    SizedBox(height: 17.v),
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
                    _buildGeneralDentistryButton(context),
                    SizedBox(height: 51.v),
                    _buildSixStack(context),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 390.h,
                        margin: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Text(
                          "msg_transferring_the".tr,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          _buildEightLessonsButton(context),
                          _buildOrthodonticsButton2(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUnionStack(BuildContext context) {
    return SizedBox(
      height: 264.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 258.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle375,
                    height: 258.v,
                    width: 430.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 258.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 18.v,
                              ),
                              decoration: AppDecoration.fillBlack9001,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 9.v),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnionPrimary8x15,
                                    height: 8.v,
                                    width: 15.h,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 8.h),
                                  ),
                                  SizedBox(height: 67.v),
                                  CustomIconButton(
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    padding: EdgeInsets.all(14.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgPlay,
                                    ),
                                  ),
                                  SizedBox(height: 67.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_08_05".tr,
                                          style: CustomTextStyles.bodyMedium_2,
                                        ),
                                        Spacer(),
                                        Text(
                                          "lbl_19_45".tr,
                                          style: CustomTextStyles.bodyMedium_2,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgProfilePrimary,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 15.h,
                                            top: 2.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: 15.v,
                                          width: 20.h,
                                          margin: EdgeInsets.only(left: 16.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 3.v,
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: 172.h,
                                      child: Divider(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 15.adaptSize,
              width: 15.adaptSize,
              margin: EdgeInsets.only(left: 167.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.25),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrthodonticsButton(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_orthodontics".tr,
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
  Widget _buildMoKhoaButton(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "lbl_m_kh_a2".tr.toUpperCase(),
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleSmall!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildFiveStack(BuildContext context) {
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
  Widget _buildGeneralDentistryButton(BuildContext context) {
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
  Widget _buildSixStack(BuildContext context) {
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
  Widget _buildEightLessonsButton(BuildContext context) {
    return CustomElevatedButton(
      width: 85.h,
      text: "lbl_8_lessons".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 12.v,
          width: 13.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallOrange400,
    );
  }

  /// Section Widget
  Widget _buildOrthodonticsButton2(BuildContext context) {
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
}
