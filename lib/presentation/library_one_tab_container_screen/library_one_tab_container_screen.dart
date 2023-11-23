import 'bloc/library_one_tab_container_bloc.dart';
import 'models/library_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_category_one_page/library_category_one_page.dart';
import 'package:onito_s_application1/presentation/library_one_page/library_one_page.dart';
import 'package:onito_s_application1/widgets/custom_search_view.dart';

class LibraryOneTabContainerScreen extends StatefulWidget {
  const LibraryOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryOneTabContainerScreenState createState() =>
      LibraryOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryOneTabContainerBloc>(
      create: (context) =>
          LibraryOneTabContainerBloc(LibraryOneTabContainerState(
        libraryOneTabContainerModelObj: LibraryOneTabContainerModel(),
      ))
            ..add(LibraryOneTabContainerInitialEvent()),
      child: LibraryOneTabContainerScreen(),
    );
  }
}

class LibraryOneTabContainerScreenState
    extends State<LibraryOneTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
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
                        child: BlocSelector<
                            LibraryOneTabContainerBloc,
                            LibraryOneTabContainerState,
                            TextEditingController?>(
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
                      _buildTabview(context),
                      SizedBox(
                        height: 789.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            LibraryOnePage.builder(context),
                            LibraryOnePage.builder(context),
                            LibraryOnePage.builder(context),
                            LibraryOnePage.builder(context),
                            LibraryCategoryOnePage.builder(context),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 25.v,
      width: 410.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
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
          Tab(
            child: Container(
              width: 90.h,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlineOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Text(
                "lbl_orthodontics".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
