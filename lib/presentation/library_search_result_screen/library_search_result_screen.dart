import '../library_search_result_screen/widgets/librarysearchresult_item_widget.dart';
import 'bloc/library_search_result_bloc.dart';
import 'models/library_search_result_model.dart';
import 'models/librarysearchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_text_form_field.dart';

class LibrarySearchResultScreen extends StatelessWidget {
  const LibrarySearchResultScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LibrarySearchResultBloc>(
      create: (context) => LibrarySearchResultBloc(LibrarySearchResultState(
        librarySearchResultModelObj: LibrarySearchResultModel(),
      ))
        ..add(LibrarySearchResultInitialEvent()),
      child: LibrarySearchResultScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              BlocSelector<LibrarySearchResultBloc, LibrarySearchResultState,
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
              SizedBox(height: 48.v),
              _buildLibrarySearchResult(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildProfile(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLibrarySearchResult(BuildContext context) {
    return Expanded(
      child: BlocSelector<LibrarySearchResultBloc, LibrarySearchResultState,
          LibrarySearchResultModel?>(
        selector: (state) => state.librarySearchResultModelObj,
        builder: (context, librarySearchResultModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 29.v,
              );
            },
            itemCount: librarySearchResultModelObj
                    ?.librarysearchresultItemList.length ??
                0,
            itemBuilder: (context, index) {
              LibrarysearchresultItemModel model = librarySearchResultModelObj
                      ?.librarysearchresultItemList[index] ??
                  LibrarysearchresultItemModel();
              return LibrarysearchresultItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 89.h,
        right: 92.h,
        bottom: 9.v,
      ),
      decoration: AppDecoration.fillBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgProfile,
                    height: 20.v,
                    width: 22.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 18.v,
                  width: 23.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_home".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                    ),
                  ),
                ),
                Text(
                  "lbl_library".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
