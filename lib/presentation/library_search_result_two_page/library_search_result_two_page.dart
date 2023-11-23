import 'bloc/library_search_result_two_bloc.dart';
import 'models/library_search_result_two_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LibrarySearchResultTwoPage extends StatefulWidget {
  const LibrarySearchResultTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  LibrarySearchResultTwoPageState createState() =>
      LibrarySearchResultTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibrarySearchResultTwoBloc>(
      create: (context) =>
          LibrarySearchResultTwoBloc(LibrarySearchResultTwoState(
        librarySearchResultTwoModelObj: LibrarySearchResultTwoModel(),
      ))
            ..add(LibrarySearchResultTwoInitialEvent()),
      child: LibrarySearchResultTwoPage(),
    );
  }
}

class LibrarySearchResultTwoPageState extends State<LibrarySearchResultTwoPage>
    with AutomaticKeepAliveClientMixin<LibrarySearchResultTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LibrarySearchResultTwoBloc, LibrarySearchResultTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack,
              child: Column(
                children: [
                  SizedBox(height: 39.v),
                  Expanded(
                    child: Column(
                      children: [
                        _buildVideos(context),
                        Spacer(),
                        _buildProfile(context),
                      ],
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
  Widget _buildVideos(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle449,
            height: 180.adaptSize,
            width: 180.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              bottom: 86.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomElevatedButton(
                  width: 85.h,
                  text: "lbl_8_videos".tr,
                  margin: EdgeInsets.only(left: 1.h),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgComponent14,
                      height: 12.v,
                      width: 13.h,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  width: 196.h,
                  child: Text(
                    "msg_clinical_video_root".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
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
