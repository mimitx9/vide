import 'bloc/library_filters_one_bloc.dart';
import 'models/library_filters_one_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibraryFiltersOnePage extends StatefulWidget {
  const LibraryFiltersOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryFiltersOnePageState createState() => LibraryFiltersOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryFiltersOneBloc>(
      create: (context) => LibraryFiltersOneBloc(LibraryFiltersOneState(
        libraryFiltersOneModelObj: LibraryFiltersOneModel(),
      ))
        ..add(LibraryFiltersOneInitialEvent()),
      child: LibraryFiltersOnePage(),
    );
  }
}

class LibraryFiltersOnePageState extends State<LibraryFiltersOnePage>
    with AutomaticKeepAliveClientMixin<LibraryFiltersOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LibraryFiltersOneBloc, LibraryFiltersOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack,
              child: Column(
                children: [
                  SizedBox(height: 34.v),
                  _buildTTC(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTTC(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillOnPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_t_t_c".tr,
                  style: CustomTextStyles.bodyLarge16_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLocationOrange400,
                  height: 9.v,
                  width: 12.h,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            width: 390.h,
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_class".tr,
              style: CustomTextStyles.bodyLarge16_1,
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            width: 390.h,
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_video".tr,
              style: CustomTextStyles.bodyLarge16_1,
            ),
          ),
        ],
      ),
    );
  }
}
