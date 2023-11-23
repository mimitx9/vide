import 'bloc/library_tab_container_bloc.dart';
import 'models/library_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_new_user_one_page/home_new_user_one_page.dart';
import 'package:onito_s_application1/presentation/library_category_page/library_category_page.dart';
import 'package:onito_s_application1/presentation/library_page/library_page.dart';
import 'package:onito_s_application1/widgets/custom_bottom_bar.dart';
import 'package:onito_s_application1/widgets/custom_search_view.dart';

class LibraryTabContainerScreen extends StatefulWidget {
  const LibraryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryTabContainerScreenState createState() =>
      LibraryTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryTabContainerBloc>(
      create: (context) => LibraryTabContainerBloc(LibraryTabContainerState(
        libraryTabContainerModelObj: LibraryTabContainerModel(),
      ))
        ..add(LibraryTabContainerInitialEvent()),
      child: LibraryTabContainerScreen(),
    );
  }
}

class LibraryTabContainerScreenState extends State<LibraryTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 34.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: BlocSelector<LibraryTabContainerBloc,
                            LibraryTabContainerState, TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                              controller: searchController,
                              hintText: "lbl_t_m_ki_m".tr,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildTabView(context),
                      SizedBox(
                        height: 719.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            LibraryPage.builder(context),
                            LibraryCategoryPage.builder(context),
                            LibraryCategoryPage.builder(context),
                            LibraryCategoryPage.builder(context),
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
  }

  /// Section Widget
  Widget _buildTabView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.v,
            width: 379.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: theme.colorScheme.primary.withOpacity(0.5),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGoogle,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_all".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 90.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "lbl_orthodontics".tr,
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 90.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "lbl_implantology".tr,
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 100.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "lbl_dental_hygiene".tr,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 13.h),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_orthodontics".tr,
              style: CustomTextStyles.bodySmallPrimary_1,
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
