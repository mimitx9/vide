import 'bloc/library_search_result_one_tab_container_bloc.dart';
import 'models/library_search_result_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_search_result_one_page/library_search_result_one_page.dart';
import 'package:onito_s_application1/presentation/library_search_result_two_page/library_search_result_two_page.dart';
import 'package:onito_s_application1/widgets/custom_text_form_field.dart';

class LibrarySearchResultOneTabContainerScreen extends StatefulWidget {
  const LibrarySearchResultOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LibrarySearchResultOneTabContainerScreenState createState() =>
      LibrarySearchResultOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibrarySearchResultOneTabContainerBloc>(
      create: (context) => LibrarySearchResultOneTabContainerBloc(
          LibrarySearchResultOneTabContainerState(
        librarySearchResultOneTabContainerModelObj:
            LibrarySearchResultOneTabContainerModel(),
      ))
        ..add(LibrarySearchResultOneTabContainerInitialEvent()),
      child: LibrarySearchResultOneTabContainerScreen(),
    );
  }
}

class LibrarySearchResultOneTabContainerScreenState
    extends State<LibrarySearchResultOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: BlocSelector<
                    LibrarySearchResultOneTabContainerBloc,
                    LibrarySearchResultOneTabContainerState,
                    TextEditingController?>(
                  selector: (state) => state.unionController,
                  builder: (context, unionController) {
                    return CustomTextFormField(
                      controller: unionController,
                      hintText: "lbl_clinical".tr,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUnionPrimary,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 60.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 22.h,
                        top: 20.v,
                        bottom: 20.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                    );
                  },
                ),
              ),
              SizedBox(height: 39.v),
              Container(
                height: 32.v,
                width: 275.h,
                margin: EdgeInsets.only(right: 66.h),
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
                          "lbl_class_1".tr,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_video_2".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 766.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    LibrarySearchResultTwoPage.builder(context),
                    LibrarySearchResultOnePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
