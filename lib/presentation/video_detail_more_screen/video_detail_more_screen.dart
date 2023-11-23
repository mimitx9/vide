import 'bloc/video_detail_more_bloc.dart';
import 'models/video_detail_more_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';
import 'package:onito_s_application1/widgets/custom_icon_button.dart';

class VideoDetailMoreScreen extends StatelessWidget {
  const VideoDetailMoreScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailMoreBloc>(
      create: (context) => VideoDetailMoreBloc(VideoDetailMoreState(
        videoDetailMoreModelObj: VideoDetailMoreModel(),
      ))
        ..add(VideoDetailMoreInitialEvent()),
      child: VideoDetailMoreScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailMoreBloc, VideoDetailMoreState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPlaylist(context),
                  SizedBox(height: 15.v),
                  _buildClientTestimonials(context),
                  SizedBox(height: 19.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          Container(
                            width: 55.h,
                            padding: EdgeInsets.symmetric(vertical: 4.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFacebook,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 2.v,
                                  ),
                                ),
                                Text(
                                  "lbl_l_u".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 86.h,
                            margin: EdgeInsets.only(left: 15.h),
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
                  ),
                  SizedBox(height: 31.v),
                  SizedBox(
                    width: 60.h,
                    child: Divider(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildReviews(context),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "lbl_02_06_2022".tr,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          Text(
                            "msg_dr_kahn_zuccheli".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnionPrimary10x5,
                            height: 10.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 11.h,
                              top: 3.v,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 390.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "msg_gingival_recessions".tr,
                        maxLines: 13,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          Text(
                            "lbl_class".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnionPrimary10x5,
                            height: 10.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 12.h,
                              top: 3.v,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "msg_influence_of_the".tr,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                    height: 60.v,
                    text: "lbl_share".tr.toUpperCase(),
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 18.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgProfilePrimary19x22,
                        height: 19.v,
                        width: 22.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillOnPrimaryTL10,
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                  ),
                  SizedBox(height: 15.v),
                  _buildDoctorReviews(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
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
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: 323.h,
              child: Text(
                "msg_clinical_video_root".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 46.h,
              top: 3.v,
              bottom: 14.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillOnPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup142,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_th_ng_tin".tr,
              style: CustomTextStyles.bodyMedium_3,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnionPrimary,
            height: 25.adaptSize,
            width: 25.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 127.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 26.adaptSize,
            width: 26.adaptSize,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPolygon25,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  radius: BorderRadius.circular(
                    3.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Text(
                      "lbl".tr,
                      style: CustomTextStyles.bodySmall_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_b_o_l_i".tr.toUpperCase(),
              style: CustomTextStyles.titleSmallPrimary_1,
            ),
          ),
        ],
      ),
    );
  }
}
