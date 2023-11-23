import 'bloc/video_detail_class_three_bloc.dart';
import 'models/video_detail_class_three_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

class VideoDetailClassThreeScreen extends StatelessWidget {
  const VideoDetailClassThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailClassThreeBloc>(
      create: (context) => VideoDetailClassThreeBloc(VideoDetailClassThreeState(
        videoDetailClassThreeModelObj: VideoDetailClassThreeModel(),
      ))
        ..add(VideoDetailClassThreeInitialEvent()),
      child: VideoDetailClassThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailClassThreeBloc, VideoDetailClassThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildUnion(context),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      height: 60.v,
                      text: "lbl_b_t_u_h_c".tr.toUpperCase(),
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.titleSmall!,
                    ),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 35.h,
                          right: 57.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_8_videos".tr.toUpperCase(),
                              style: CustomTextStyles.bodyMedium_3,
                            ),
                            Spacer(
                              flex: 50,
                            ),
                            Text(
                              "lbl_14_ti_ng".tr.toUpperCase(),
                              style: CustomTextStyles.bodyMedium_3,
                            ),
                            Spacer(
                              flex: 50,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgFacebook,
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.only(
                                top: 4.v,
                                bottom: 2.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "lbl_l_u3".tr.toUpperCase(),
                                style: CustomTextStyles.bodyMedium_2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 43.v),
                    _buildTime(context),
                    SizedBox(height: 24.v),
                    _buildTime1(context),
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
  Widget _buildUnion(BuildContext context) {
    return SizedBox(
      height: 446.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 430.adaptSize,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle375,
                    height: 430.adaptSize,
                    width: 430.adaptSize,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomAppBar(
                          height: 129.v,
                          leadingWidth: 52.h,
                          leading: AppbarLeadingImage(
                            imagePath: ImageConstant.imgUnionPrimary,
                            margin: EdgeInsets.only(
                              left: 27.h,
                              top: 36.v,
                              bottom: 68.v,
                            ),
                          ),
                          actions: [
                            AppbarTrailingImageOne(
                              imagePath: ImageConstant.imgProfilePrimary19x22,
                              margin:
                                  EdgeInsets.fromLTRB(27.h, 37.v, 27.h, 73.v),
                            ),
                          ],
                          styleType:
                              Style.bgGradientnameblack900nameblack900opacity0,
                        ),
                        SizedBox(height: 172.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 35.h,
                            vertical: 18.v,
                          ),
                          decoration: AppDecoration.gradientBlackToBlack,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 40.v),
                              SizedBox(
                                width: 360.h,
                                child: Text(
                                  "msg_influence_of_the".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge,
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "msg_dr_kahn_zuccheli".tr,
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 237.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle425,
                  height: 108.v,
                  width: 180.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(bottom: 132.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle449,
                  height: 108.v,
                  width: 180.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(top: 132.v),
                ),
                Container(
                  width: 34.h,
                  margin: EdgeInsets.only(
                    top: 86.v,
                    bottom: 138.v,
                  ),
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
                Container(
                  width: 34.h,
                  margin: EdgeInsets.only(
                    top: 218.v,
                    bottom: 6.v,
                  ),
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
                    top: 91.v,
                    bottom: 139.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(
                    top: 223.v,
                    bottom: 7.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 88.v,
                    bottom: 136.v,
                  ),
                  child: Text(
                    "lbl_l_u".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 220.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_l_u".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 161.h,
                  child: Text(
                    "msg_treatment_planning".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrow2,
                        height: 10.v,
                        width: 1.h,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "lbl_t_i_xu_ng".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                SizedBox(
                  width: 196.h,
                  child: Text(
                    "msg_clinical_video_root".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrow2,
                        height: 10.v,
                        width: 1.h,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "lbl_download".tr,
                          style: theme.textTheme.bodySmall,
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
    );
  }

  /// Section Widget
  Widget _buildTime1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 108.v,
            width: 180.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle443,
                  height: 108.v,
                  width: 180.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 34.h,
                    margin: EdgeInsets.only(
                      right: 7.h,
                      bottom: 6.v,
                    ),
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
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 192.h,
                  child: Text(
                    "msg_transferring_the".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 35.v),
                Container(
                  width: 154.h,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    right: 32.h,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFacebook,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "lbl_download".tr,
                          style: theme.textTheme.bodySmall,
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
    );
  }
}
