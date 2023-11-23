import 'bloc/home_new_user_one_container_bloc.dart';import 'models/home_new_user_one_container_model.dart';import 'package:flutter/material.dart';import 'package:onito_s_application1/core/app_export.dart';import 'package:onito_s_application1/presentation/home_new_user_one_page/home_new_user_one_page.dart';import 'package:onito_s_application1/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeNewUserOneContainerScreen extends StatelessWidget {HomeNewUserOneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeNewUserOneContainerBloc>(create: (context) => HomeNewUserOneContainerBloc(HomeNewUserOneContainerState(homeNewUserOneContainerModelObj: HomeNewUserOneContainerModel()))..add(HomeNewUserOneContainerInitialEvent()), child: HomeNewUserOneContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomeNewUserOneContainerBloc, HomeNewUserOneContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeNewUserOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Profile: return AppRoutes.homeNewUserOnePage; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Iconuser: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeNewUserOnePage: return HomeNewUserOnePage.builder(context); default: return DefaultWidget();} } 
 }
