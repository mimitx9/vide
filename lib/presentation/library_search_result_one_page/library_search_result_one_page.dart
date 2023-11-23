import '../library_search_result_one_page/widgets/librarysearchresultone_item_widget.dart';
import 'bloc/library_search_result_one_bloc.dart';
import 'models/library_search_result_one_model.dart';
import 'models/librarysearchresultone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibrarySearchResultOnePage extends StatefulWidget {
  const LibrarySearchResultOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  LibrarySearchResultOnePageState createState() =>
      LibrarySearchResultOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibrarySearchResultOneBloc>(
      create: (context) =>
          LibrarySearchResultOneBloc(LibrarySearchResultOneState(
        librarySearchResultOneModelObj: LibrarySearchResultOneModel(),
      ))
            ..add(LibrarySearchResultOneInitialEvent()),
      child: LibrarySearchResultOnePage(),
    );
  }
}

class LibrarySearchResultOnePageState extends State<LibrarySearchResultOnePage>
    with AutomaticKeepAliveClientMixin<LibrarySearchResultOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Column(
            children: [
              SizedBox(height: 39.v),
              Column(
                children: [
                  _buildLibrarySearchResultOne(context),
                  SizedBox(height: 417.v),
                  _buildProfile(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLibrarySearchResultOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<LibrarySearchResultOneBloc,
          LibrarySearchResultOneState, LibrarySearchResultOneModel?>(
        selector: (state) => state.librarySearchResultOneModelObj,
        builder: (context, librarySearchResultOneModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: librarySearchResultOneModelObj
                    ?.librarysearchresultoneItemList.length ??
                0,
            itemBuilder: (context, index) {
              LibrarysearchresultoneItemModel model =
                  librarySearchResultOneModelObj
                          ?.librarysearchresultoneItemList[index] ??
                      LibrarysearchresultoneItemModel();
              return LibrarysearchresultoneItemWidget(
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
      padding: EdgeInsets.symmetric(
        horizontal: 89.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlack900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 10.h,
            ),
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
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
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
