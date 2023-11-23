import 'bloc/video_detail_scroll_down_bloc.dart';
import 'models/video_detail_scroll_down_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';
import 'package:onito_s_application1/widgets/custom_icon_button.dart';

class VideoDetailScrollDownScreen extends StatelessWidget {
  const VideoDetailScrollDownScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailScrollDownBloc>(
      create: (context) => VideoDetailScrollDownBloc(VideoDetailScrollDownState(
        videoDetailScrollDownModelObj: VideoDetailScrollDownModel(),
      ))
        ..add(VideoDetailScrollDownInitialEvent()),
      child: VideoDetailScrollDownScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailScrollDownBloc, VideoDetailScrollDownState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: mediaQueryData.size.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 158.h),
                          child: Text(
                            "lbl_my_list".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 56.h),
                          child: Text(
                            "lbl_download".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrow2,
                        height: 10.v,
                        width: 1.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 119.h),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 159.h),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 3.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillBlack900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Text(
                                      "lbl_19_45".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmall10,
                                    ),
                                  ],
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildClinicalVideoRoot(context),
                            SizedBox(height: 19.v),
                            Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Row(
                                children: [
                                  _buildMyList(context),
                                  _buildDownloadButton(context),
                                  Container(
                                    width: 100.h,
                                    margin: EdgeInsets.only(left: 14.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 4.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                            _buildViewStack(context),
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
                            _buildGeneralDentistry(context),
                            SizedBox(height: 51.v),
                            _buildViewStack1(context),
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
                                  _buildLessons(context),
                                  _buildOrthodonticsButton(context),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildUnion(context),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(
                            left: 167.h,
                            top: 249.v,
                          ),
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
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildClinicalVideoRoot(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
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
            Container(
              margin: EdgeInsets.only(
                left: 46.h,
                top: 3.v,
                bottom: 14.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Container(
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Container(
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyList(BuildContext context) {
    return CustomElevatedButton(
      width: 70.h,
      text: "lbl_my_list".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 7.v,
          width: 9.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallPrimary,
    );
  }

  /// Section Widget
  Widget _buildDownloadButton(BuildContext context) {
    return CustomElevatedButton(
      width: 86.h,
      text: "lbl_download".tr,
      margin: EdgeInsets.only(left: 14.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 9.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrow2,
          height: 10.v,
          width: 1.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
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
                SizedBox(
                  height: 183.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
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
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35.v),
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
  Widget _buildGeneralDentistry(BuildContext context) {
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
  Widget _buildViewStack1(BuildContext context) {
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
  Widget _buildLessons(BuildContext context) {
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
  Widget _buildOrthodonticsButton(BuildContext context) {
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
  Widget _buildUnion(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
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
                              imagePath: ImageConstant.imgUnionPrimary8x15,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                    imagePath: ImageConstant.imgProfilePrimary,
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
    );
  }
}
