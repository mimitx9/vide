import '../video_detail_playlist_screen/widgets/videodetailplaylistlist_item_widget.dart';
import 'bloc/video_detail_playlist_bloc.dart';
import 'models/video_detail_playlist_model.dart';
import 'models/videodetailplaylistlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_icon_button.dart';
import 'package:onito_s_application1/widgets/custom_radio_button.dart';

class VideoDetailPlaylistScreen extends StatelessWidget {
  const VideoDetailPlaylistScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailPlaylistBloc>(
      create: (context) => VideoDetailPlaylistBloc(VideoDetailPlaylistState(
        videoDetailPlaylistModelObj: VideoDetailPlaylistModel(),
      ))
        ..add(VideoDetailPlaylistInitialEvent()),
      child: VideoDetailPlaylistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildUnionStack(context),
              SizedBox(height: 15.v),
              _buildClinicalVideoRootRadio(context),
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
              _buildVideosTwentyEightRow(context),
              SizedBox(height: 35.v),
              _buildVideoDetailPlaylistList(context),
              _buildVideoDetailPlaylistColumn(context),
            ],
          ),
        ),
      ),
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
  Widget _buildClinicalVideoRootRadio(BuildContext context) {
    return BlocSelector<VideoDetailPlaylistBloc, VideoDetailPlaylistState,
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
                  .read<VideoDetailPlaylistBloc>()
                  .add(ChangeRadioButtonEvent(value: value));
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildVideosTwentyEightRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_videos_2_8".tr,
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
  Widget _buildVideoDetailPlaylistList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<VideoDetailPlaylistBloc, VideoDetailPlaylistState,
            VideoDetailPlaylistModel?>(
          selector: (state) => state.videoDetailPlaylistModelObj,
          builder: (context, videoDetailPlaylistModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: videoDetailPlaylistModelObj
                      ?.videodetailplaylistlistItemList.length ??
                  0,
              itemBuilder: (context, index) {
                VideodetailplaylistlistItemModel model =
                    videoDetailPlaylistModelObj
                            ?.videodetailplaylistlistItemList[index] ??
                        VideodetailplaylistlistItemModel();
                return VideodetailplaylistlistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoDetailPlaylistColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTime(
            context,
            userImage: ImageConstant.imgRectangle443,
            time: "lbl_19_45".tr,
          ),
          SizedBox(height: 24.v),
          _buildTime(
            context,
            userImage: ImageConstant.imgRectangle445,
            time: "lbl_19_45".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String userImage,
    required String time,
  }) {
    return SizedBox(
      height: 108.v,
      width: 180.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: userImage,
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
                time,
                style: CustomTextStyles.bodySmall10.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
