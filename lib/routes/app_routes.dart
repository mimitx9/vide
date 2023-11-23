import 'package:flutter/material.dart';
import 'package:onito_s_application1/presentation/home_screen/home_screen.dart';
import 'package:onito_s_application1/presentation/home_scroll_down_one_screen/home_scroll_down_one_screen.dart';
import 'package:onito_s_application1/presentation/home_recent_screen/home_recent_screen.dart';
import 'package:onito_s_application1/presentation/home_new_user_screen/home_new_user_screen.dart';
import 'package:onito_s_application1/presentation/home_scroll_down_screen/home_scroll_down_screen.dart';
import 'package:onito_s_application1/presentation/home_new_user_one_container_screen/home_new_user_one_container_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_unlock_error_one_screen/video_detail_unlock_error_one_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_unlock_error_screen/video_detail_unlock_error_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_unlock_success_screen/video_detail_unlock_success_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_related_video_screen/video_detail_related_video_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_scroll_down_screen/video_detail_scroll_down_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_minimize_video_screen/video_detail_minimize_video_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_playlist_screen/video_detail_playlist_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_related_screen/video_detail_related_screen.dart';
import 'package:onito_s_application1/presentation/library_tab_container_screen/library_tab_container_screen.dart';
import 'package:onito_s_application1/presentation/library_search_screen/library_search_screen.dart';
import 'package:onito_s_application1/presentation/library_search_result_screen/library_search_result_screen.dart';
import 'package:onito_s_application1/presentation/library_search_no_result_screen/library_search_no_result_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_more_screen/video_detail_more_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_class_three_screen/video_detail_class_three_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_author_tab_container_screen/video_detail_author_tab_container_screen.dart';
import 'package:onito_s_application1/presentation/library_one_tab_container_screen/library_one_tab_container_screen.dart';
import 'package:onito_s_application1/presentation/library_filters_tab_container_screen/library_filters_tab_container_screen.dart';
import 'package:onito_s_application1/presentation/library_search_result_one_tab_container_screen/library_search_result_one_tab_container_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_class_one_screen/video_detail_class_one_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_class_screen/video_detail_class_screen.dart';
import 'package:onito_s_application1/presentation/video_detail_class_two_screen/video_detail_class_two_screen.dart';
import 'package:onito_s_application1/presentation/login_screen/login_screen.dart';
import 'package:onito_s_application1/presentation/login_one_screen/login_one_screen.dart';
import 'package:onito_s_application1/presentation/login_two_screen/login_two_screen.dart';
import 'package:onito_s_application1/presentation/no_internet_screen/no_internet_screen.dart';
import 'package:onito_s_application1/presentation/disconnect_server_screen/disconnect_server_screen.dart';
import 'package:onito_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:onito_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String homeScrollDownOneScreen = '/home_scroll_down_one_screen';

  static const String homeRecentScreen = '/home_recent_screen';

  static const String homeNewUserScreen = '/home_new_user_screen';

  static const String homeScrollDownScreen = '/home_scroll_down_screen';

  static const String homeNewUserOnePage = '/home_new_user_one_page';

  static const String homeNewUserOneContainerScreen =
      '/home_new_user_one_container_screen';

  static const String videoDetailUnlockErrorOneScreen =
      '/video_detail_unlock_error_one_screen';

  static const String videoDetailUnlockErrorScreen =
      '/video_detail_unlock_error_screen';

  static const String videoDetailUnlockSuccessScreen =
      '/video_detail_unlock_success_screen';

  static const String videoDetailRelatedVideoScreen =
      '/video_detail_related_video_screen';

  static const String videoDetailScrollDownScreen =
      '/video_detail_scroll_down_screen';

  static const String videoDetailMinimizeVideoScreen =
      '/video_detail_minimize_video_screen';

  static const String videoDetailPlaylistScreen =
      '/video_detail_playlist_screen';

  static const String videoDetailRelatedScreen = '/video_detail_related_screen';

  static const String libraryPage = '/library_page';

  static const String libraryTabContainerScreen =
      '/library_tab_container_screen';

  static const String libraryCategoryPage = '/library_category_page';

  static const String librarySearchScreen = '/library_search_screen';

  static const String librarySearchResultScreen =
      '/library_search_result_screen';

  static const String librarySearchNoResultScreen =
      '/library_search_no_result_screen';

  static const String videoDetailMoreScreen = '/video_detail_more_screen';

  static const String videoDetailClassThreeScreen =
      '/video_detail_class_three_screen';

  static const String videoDetailAuthorPage = '/video_detail_author_page';

  static const String videoDetailAuthorTabContainerScreen =
      '/video_detail_author_tab_container_screen';

  static const String videoDetailAuthorOnePage =
      '/video_detail_author_one_page';

  static const String libraryOnePage = '/library_one_page';

  static const String libraryOneTabContainerScreen =
      '/library_one_tab_container_screen';

  static const String libraryCategoryOnePage = '/library_category_one_page';

  static const String libraryFiltersTwoPage = '/library_filters_two_page';

  static const String libraryFiltersPage = '/library_filters_page';

  static const String libraryFiltersTabContainerScreen =
      '/library_filters_tab_container_screen';

  static const String libraryFiltersOnePage = '/library_filters_one_page';

  static const String librarySearchResultOnePage =
      '/library_search_result_one_page';

  static const String librarySearchResultOneTabContainerScreen =
      '/library_search_result_one_tab_container_screen';

  static const String librarySearchResultTwoPage =
      '/library_search_result_two_page';

  static const String videoDetailClassOneScreen =
      '/video_detail_class_one_screen';

  static const String videoDetailClassScreen = '/video_detail_class_screen';

  static const String videoDetailClassTwoScreen =
      '/video_detail_class_two_screen';

  static const String loginScreen = '/login_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String noInternetScreen = '/no_internet_screen';

  static const String disconnectServerScreen = '/disconnect_server_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        homeScrollDownOneScreen: HomeScrollDownOneScreen.builder,
        homeRecentScreen: HomeRecentScreen.builder,
        homeNewUserScreen: HomeNewUserScreen.builder,
        homeScrollDownScreen: HomeScrollDownScreen.builder,
        homeNewUserOneContainerScreen: HomeNewUserOneContainerScreen.builder,
        videoDetailUnlockErrorOneScreen:
            VideoDetailUnlockErrorOneScreen.builder,
        videoDetailUnlockErrorScreen: VideoDetailUnlockErrorScreen.builder,
        videoDetailUnlockSuccessScreen: VideoDetailUnlockSuccessScreen.builder,
        videoDetailRelatedVideoScreen: VideoDetailRelatedVideoScreen.builder,
        videoDetailScrollDownScreen: VideoDetailScrollDownScreen.builder,
        videoDetailMinimizeVideoScreen: VideoDetailMinimizeVideoScreen.builder,
        videoDetailPlaylistScreen: VideoDetailPlaylistScreen.builder,
        videoDetailRelatedScreen: VideoDetailRelatedScreen.builder,
        libraryTabContainerScreen: LibraryTabContainerScreen.builder,
        librarySearchScreen: LibrarySearchScreen.builder,
        librarySearchResultScreen: LibrarySearchResultScreen.builder,
        librarySearchNoResultScreen: LibrarySearchNoResultScreen.builder,
        videoDetailMoreScreen: VideoDetailMoreScreen.builder,
        videoDetailClassThreeScreen: VideoDetailClassThreeScreen.builder,
        videoDetailAuthorTabContainerScreen:
            VideoDetailAuthorTabContainerScreen.builder,
        libraryOneTabContainerScreen: LibraryOneTabContainerScreen.builder,
        libraryFiltersTabContainerScreen:
            LibraryFiltersTabContainerScreen.builder,
        librarySearchResultOneTabContainerScreen:
            LibrarySearchResultOneTabContainerScreen.builder,
        videoDetailClassOneScreen: VideoDetailClassOneScreen.builder,
        videoDetailClassScreen: VideoDetailClassScreen.builder,
        videoDetailClassTwoScreen: VideoDetailClassTwoScreen.builder,
        loginScreen: LoginScreen.builder,
        loginOneScreen: LoginOneScreen.builder,
        loginTwoScreen: LoginTwoScreen.builder,
        noInternetScreen: NoInternetScreen.builder,
        disconnectServerScreen: DisconnectServerScreen.builder,
        splashScreen: SplashScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
