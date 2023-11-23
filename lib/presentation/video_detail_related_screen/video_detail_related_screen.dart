import 'bloc/video_detail_related_bloc.dart';
import 'models/video_detail_related_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';
import 'package:onito_s_application1/widgets/custom_radio_button.dart';

class VideoDetailRelatedScreen extends StatelessWidget {
  const VideoDetailRelatedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailRelatedBloc>(
      create: (context) => VideoDetailRelatedBloc(VideoDetailRelatedState(
        videoDetailRelatedModelObj: VideoDetailRelatedModel(),
      ))
        ..add(VideoDetailRelatedInitialEvent()),
      child: VideoDetailRelatedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle375,
                  height: 258.v,
                  width: 430.h,
                ),
                SizedBox(height: 21.v),
                _buildClinicalVideoRoot(context),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(
                    children: [
                      Container(
                        width: 70.h,
                        padding: EdgeInsets.symmetric(vertical: 4.v),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Opacity(
                              opacity: 0.25,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 7.v,
                                width: 9.h,
                                margin: EdgeInsets.symmetric(vertical: 4.v),
                              ),
                            ),
                            Opacity(
                              opacity: 0.25,
                              child: Text(
                                "lbl_l_u2".tr,
                                style: CustomTextStyles.bodySmallPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 86.h,
                        margin: EdgeInsets.only(left: 14.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgArrow2,
                              height: 10.v,
                              width: 1.h,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 9.h,
                                top: 1.v,
                              ),
                              child: Text(
                                "lbl_t_i_xu_ng".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100.h,
                        margin: EdgeInsets.only(left: 14.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGoogle,
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              radius: BorderRadius.circular(
                                2.h,
                              ),
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_orthodontics".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                _buildView(context),
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
                CustomElevatedButton(
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
                ),
                SizedBox(height: 51.v),
                _buildVideoDetailRelated(context),
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
                      CustomElevatedButton(
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
                      ),
                      CustomElevatedButton(
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
  Widget _buildClinicalVideoRoot(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<VideoDetailRelatedBloc, VideoDetailRelatedState,
          String?>(
        selector: (state) => state.radioGroup,
        builder: (context, radioGroup) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 17.h,
            ),
            child: CustomRadioButton(
              text: "msg_clinical_video_root".tr,
              value: "msg_clinical_video_root".tr ?? "",
              groupValue: radioGroup,
              onChange: (value) {
                context
                    .read<VideoDetailRelatedBloc>()
                    .add(ChangeRadioButtonEvent(value: value));
              },
            ),
          );
        },
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
  Widget _buildVideoDetailRelated(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 26.v),
                  decoration: AppDecoration.gradientBlackToBlack,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 12.v),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 22.v,
                        ),
                        decoration: AppDecoration.fillBlack900,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "lbl_videos_2_8".tr,
                                style: CustomTextStyles.bodyMedium_3,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowUp,
                              height: 8.v,
                              width: 15.h,
                              margin: EdgeInsets.only(
                                top: 7.v,
                                right: 1.h,
                                bottom: 4.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 159.h,
                    right: 56.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 34.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Text(
                          "lbl_19_45".tr,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFacebook,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(
                          left: 27.h,
                          top: 5.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_my_list".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrow2,
                        height: 10.v,
                        width: 1.h,
                        margin: EdgeInsets.only(top: 5.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_download".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70.v),
                Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
