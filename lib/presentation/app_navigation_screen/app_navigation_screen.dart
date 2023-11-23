import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home > scroll down One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScrollDownOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home > recent".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeRecentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home > new user".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeNewUserScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home > scroll down".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScrollDownScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home > new user One - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeNewUserOneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > Unlock error One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailUnlockErrorOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > Unlock error".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailUnlockErrorScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > Unlock success".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailUnlockSuccessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > related video".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailRelatedVideoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > scroll down".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailScrollDownScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > minimize video".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailMinimizeVideoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > playlist".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailPlaylistScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > related".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailRelatedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Library - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.libraryTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Library > search".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.librarySearchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Library > search result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.librarySearchResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Library > search no result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.librarySearchNoResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > more".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailMoreScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > class Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailClassThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Video detail > author - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .videoDetailAuthorTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Library One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.libraryOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Library > Filters - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.libraryFiltersTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Library > search result One - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .librarySearchResultOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > class One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailClassOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > class".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailClassScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video detail > class Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoDetailClassTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "No internet".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.noInternetScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Disconnect Server".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.disconnectServerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                          ],
                        ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
