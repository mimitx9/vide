import 'bloc/library_filters_tab_container_bloc.dart';
import 'models/library_filters_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_filters_one_page/library_filters_one_page.dart';
import 'package:onito_s_application1/presentation/library_filters_page/library_filters_page.dart';
import 'package:onito_s_application1/presentation/library_filters_two_page/library_filters_two_page.dart';
import 'package:onito_s_application1/widgets/custom_search_view.dart';
import 'package:onito_s_application1/widgets/custom_text_form_field.dart';

class LibraryFiltersTabContainerScreen extends StatefulWidget {
  const LibraryFiltersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryFiltersTabContainerScreenState createState() =>
      LibraryFiltersTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryFiltersTabContainerBloc>(
      create: (context) =>
          LibraryFiltersTabContainerBloc(LibraryFiltersTabContainerState(
        libraryFiltersTabContainerModelObj: LibraryFiltersTabContainerModel(),
      ))
            ..add(LibraryFiltersTabContainerInitialEvent()),
      child: LibraryFiltersTabContainerScreen(),
    );
  }
}

class LibraryFiltersTabContainerScreenState
    extends State<LibraryFiltersTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
              _buildMenuStack(context),
              SizedBox(
                width: 60.h,
                child: Divider(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 15.v),
              _buildLCRow(context),
              SizedBox(height: 42.v),
              Container(
                height: 24.v,
                width: 311.h,
                margin: EdgeInsets.only(left: 32.h),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_m_n_h_c".tr,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_th_i_l_ng".tr,
                      ),
                    ),
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_th_lo_i".tr,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 608.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      LibraryFiltersTwoPage.builder(context),
                      LibraryFiltersPage.builder(context),
                      LibraryFiltersOnePage.builder(context),
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
  Widget _buildMenuStack(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 212.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 34.v),
                  child: BlocSelector<LibraryFiltersTabContainerBloc,
                      LibraryFiltersTabContainerState, TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        width: 390.h,
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.topCenter,
                        borderDecoration: SearchViewStyleHelper.fillOnPrimary,
                        filled: true,
                        fillColor: theme.colorScheme.onPrimary,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    bottom: 69.v,
                  ),
                  child: Row(
                    children: [
                      BlocSelector<
                          LibraryFiltersTabContainerBloc,
                          LibraryFiltersTabContainerState,
                          TextEditingController?>(
                        selector: (state) => state.menuController,
                        builder: (context, menuController) {
                          return CustomTextFormField(
                            width: 50.h,
                            controller: menuController,
                            hintText: "lbl_all".tr,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                              margin: EdgeInsets.fromLTRB(6.h, 7.v, 5.h, 7.v),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  2.h,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMenu,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 25.v,
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 5.v,
                              right: 14.h,
                              bottom: 5.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillOnPrimaryTL5,
                          );
                        },
                      ),
                      Container(
                        width: 90.h,
                        margin: EdgeInsets.only(left: 13.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_orthodontics".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        width: 90.h,
                        margin: EdgeInsets.only(left: 13.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_implantology".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        width: 100.h,
                        margin: EdgeInsets.only(left: 13.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_dental_hygiene".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.h, 166.v, 20.h, 30.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup519,
                        height: 9.v,
                        width: 10.h,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_filters".tr,
                          style: CustomTextStyles.bodySmall_2,
                        ),
                      ),
                      Spacer(),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_clear_filters".tr,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 212.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.black900.withOpacity(0.53),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 90.h,
                  margin: EdgeInsets.only(bottom: 69.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "lbl_orthodontics".tr,
                    style: theme.textTheme.bodySmall,
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
  Widget _buildLCRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_l_c".tr,
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
}
