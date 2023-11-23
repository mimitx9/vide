import 'bloc/video_detail_minimize_video_bloc.dart';
import 'models/video_detail_minimize_video_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_new_user_one_page/home_new_user_one_page.dart';
import 'package:onito_s_application1/widgets/custom_bottom_bar.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

class VideoDetailMinimizeVideoScreen extends StatelessWidget {
  VideoDetailMinimizeVideoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailMinimizeVideoBloc>(
      create: (context) =>
          VideoDetailMinimizeVideoBloc(VideoDetailMinimizeVideoState(
        videoDetailMinimizeVideoModelObj: VideoDetailMinimizeVideoModel(),
      ))
            ..add(VideoDetailMinimizeVideoInitialEvent()),
      child: VideoDetailMinimizeVideoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailMinimizeVideoBloc,
        VideoDetailMinimizeVideoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTwoHundred(context),
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
                          _buildButton2Video(context),
                          _buildButtonImplantology(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 51.v),
                    _buildView1(context),
                    SizedBox(height: 18.v),
                    Container(
                      width: 323.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 87.h,
                      ),
                      child: Text(
                        "msg_clinical_video_root".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          _buildButton8Lessons(context),
                          _buildButtonOrthodontics(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonTwoHundred(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 75.h,
      text: "lbl_200".tr,
      margin: EdgeInsets.only(bottom: 11.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUnion,
          height: 16.v,
          width: 8.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryTL20,
      buttonTextStyle: CustomTextStyles.bodyLargeOrange40016,
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
                SizedBox(
                  height: 125.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle3771,
                        height: 80.v,
                        width: 430.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 37.v,
                          ),
                          decoration: AppDecoration.gradientBlackToBlack,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup594,
                                height: 40.v,
                                width: 45.h,
                                margin: EdgeInsets.only(bottom: 11.v),
                              ),
                              _buildButtonTwoHundred(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
  Widget _buildButton2Video(BuildContext context) {
    return CustomElevatedButton(
      width: 85.h,
      text: "lbl_2_video".tr,
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
                SizedBox(
                  height: 157.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
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
                        alignment: Alignment.center,
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 7.v),
                          decoration: AppDecoration.fillBlack900,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle375,
                                height: 80.v,
                                width: 132.h,
                                margin: EdgeInsets.only(bottom: 70.v),
                              ),
                              Container(
                                width: 168.h,
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 23.v,
                                  bottom: 97.v,
                                ),
                                child: Text(
                                  "msg_clinical_video_root2".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgInfo,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 29.h,
                                  top: 33.v,
                                  bottom: 103.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgUnionPrimary,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 27.h,
                                  top: 27.v,
                                  bottom: 97.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 61.v),
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
  Widget _buildButton8Lessons(BuildContext context) {
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Profile:
        return AppRoutes.homeNewUserOnePage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Iconuser:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeNewUserOnePage:
        return HomeNewUserOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
