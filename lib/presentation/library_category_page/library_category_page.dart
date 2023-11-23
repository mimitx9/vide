import 'bloc/library_category_bloc.dart';
import 'models/library_category_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LibraryCategoryPage extends StatefulWidget {
  const LibraryCategoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryCategoryPageState createState() => LibraryCategoryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryCategoryBloc>(
      create: (context) => LibraryCategoryBloc(LibraryCategoryState(
        libraryCategoryModelObj: LibraryCategoryModel(),
      ))
        ..add(LibraryCategoryInitialEvent()),
      child: LibraryCategoryPage(),
    );
  }
}

class LibraryCategoryPageState extends State<LibraryCategoryPage>
    with AutomaticKeepAliveClientMixin<LibraryCategoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LibraryCategoryBloc, LibraryCategoryState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack,
              child: Column(
                children: [
                  SizedBox(height: 55.v),
                  _buildTimeStack(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTimeStack(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 108.v,
            width: 180.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle449,
                  height: 108.v,
                  width: 180.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 34.h,
                    margin: EdgeInsets.only(
                      right: 7.h,
                      bottom: 6.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Text(
                      "lbl_19_45".tr,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 196.h,
                  child: Text(
                    "msg_clinical_video_root".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  width: 100.h,
                  text: "lbl_orthodontics".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGoogle,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
