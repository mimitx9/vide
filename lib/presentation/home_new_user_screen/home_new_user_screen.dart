import 'bloc/home_new_user_bloc.dart';
import 'models/home_new_user_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_new_user_one_page/home_new_user_one_page.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_trailing_button.dart';
import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:onito_s_application1/widgets/custom_bottom_bar.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

class HomeNewUserScreen extends StatelessWidget {
  HomeNewUserScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeNewUserBloc>(
      create: (context) => HomeNewUserBloc(HomeNewUserState(
        homeNewUserModelObj: HomeNewUserModel(),
      ))
        ..add(HomeNewUserInitialEvent()),
      child: HomeNewUserScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeNewUserBloc, HomeNewUserState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 33.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildEleven(context),
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
                                _buildEightVideos(context),
                                _buildOrthodontics(context),
                              ],
                            ),
                          ),
                          SizedBox(height: 51.v),
                          _buildTwelve(context),
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
                          _buildThirteen(context),
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
                                Container(
                                  width: 85.h,
                                  padding: EdgeInsets.symmetric(vertical: 4.v),
                                  decoration:
                                      AppDecoration.fillOnPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLocation,
                                        height: 12.v,
                                        width: 13.h,
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text(
                                          "lbl_8_lessons".tr,
                                          style: CustomTextStyles
                                              .bodySmallOrange400,
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
                                  decoration:
                                      AppDecoration.fillOnPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGoogle,
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                        radius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        margin: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 3.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5.h,
                                          bottom: 1.v,
                                        ),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup594,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 65.h),
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
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_c_a_b_n".tr,
          margin: EdgeInsets.fromLTRB(20.h, 18.v, 8.h, 12.v),
        ),
        AppbarTrailingButton(
          margin: EdgeInsets.only(
            left: 48.h,
            top: 8.v,
            right: 28.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
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
  Widget _buildEightVideos(BuildContext context) {
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
  Widget _buildOrthodontics(BuildContext context) {
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
  Widget _buildTwelve(BuildContext context) {
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
  Widget _buildThirteen(BuildContext context) {
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
