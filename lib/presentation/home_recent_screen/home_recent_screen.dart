import 'bloc/home_recent_bloc.dart';
import 'models/home_recent_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_new_user_one_page/home_new_user_one_page.dart';
import 'package:onito_s_application1/widgets/custom_bottom_bar.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';
import 'package:onito_s_application1/widgets/custom_icon_button.dart';

class HomeRecentScreen extends StatelessWidget {
  HomeRecentScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeRecentBloc>(
      create: (context) => HomeRecentBloc(HomeRecentState(
        homeRecentModelObj: HomeRecentModel(),
      ))
        ..add(HomeRecentInitialEvent()),
      child: HomeRecentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeRecentBloc, HomeRecentState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 37.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildRowTwoHundred(context),
                          SizedBox(height: 44.v),
                          _buildColumnNhn5Key(context),
                          SizedBox(height: 44.v),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "lbl_g_n_y".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          _buildHorizontalScrollTreatmentPlanning(context),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 54.h,
                              child: Text(
                                "msg_clinical_video_root".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 51.v),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "lbl_xu_t".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(height: 25.v),
                          _buildStackView(context),
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
                          _buildButtonOrthodontics(context),
                          SizedBox(height: 52.v),
                          _buildStackView1(context),
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
                                _buildButtonOrthodontics1(context),
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
  Widget _buildButtonTwoHundred(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 75.h,
      text: "lbl_200".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUnion,
          height: 16.v,
          width: 8.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: CustomTextStyles.bodyLargeOrange40016,
    );
  }

  /// Section Widget
  Widget _buildRowTwoHundred(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup594,
              height: 40.v,
              width: 45.h,
            ),
            _buildButtonTwoHundred(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonNhn5Key(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "lbl_nh_n_5_key".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildColumnNhn5Key(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 45.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_nhi_m_v".tr.toUpperCase(),
              style: CustomTextStyles.bodyLargeOrange400,
            ),
            SizedBox(height: 13.v),
            SizedBox(
              width: 300.h,
              child: Text(
                "msg_nh_gi_app_5_sao".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumErrorContainer,
              ),
            ),
            SizedBox(height: 22.v),
            _buildButtonNhn5Key(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScrollTreatmentPlanning(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        left: 20.h,
        right: 87.h,
      ),
      child: IntrinsicWidth(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: 301.h,
                margin: EdgeInsets.only(
                  top: 235.v,
                  right: 22.h,
                ),
                child: Text(
                  "msg_treatment_planning".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle372,
              height: 216.v,
              width: 323.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(bottom: 66.v),
            ),
            Container(
              width: 50.h,
              margin: EdgeInsets.only(
                top: 181.v,
                bottom: 76.v,
              ),
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
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle375216x323,
              height: 216.v,
              width: 323.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(bottom: 66.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
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
  Widget _buildButtonOrthodontics(BuildContext context) {
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
  Widget _buildStackView1(BuildContext context) {
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
                  height: 154.v,
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
                      CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        padding: EdgeInsets.all(14.h),
                        alignment: Alignment.bottomCenter,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 64.v),
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
  Widget _buildButtonOrthodontics1(BuildContext context) {
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
