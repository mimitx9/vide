import 'bloc/video_detail_author_one_bloc.dart';
import 'models/video_detail_author_one_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class VideoDetailAuthorOnePage extends StatefulWidget {
  const VideoDetailAuthorOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  VideoDetailAuthorOnePageState createState() =>
      VideoDetailAuthorOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailAuthorOneBloc>(
      create: (context) => VideoDetailAuthorOneBloc(VideoDetailAuthorOneState(
        videoDetailAuthorOneModelObj: VideoDetailAuthorOneModel(),
      ))
        ..add(VideoDetailAuthorOneInitialEvent()),
      child: VideoDetailAuthorOnePage(),
    );
  }
}

class VideoDetailAuthorOnePageState extends State<VideoDetailAuthorOnePage>
    with AutomaticKeepAliveClientMixin<VideoDetailAuthorOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailAuthorOneBloc, VideoDetailAuthorOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack,
              child: Column(
                children: [
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _buildTime(
                                  context,
                                  userImage: ImageConstant.imgRectangle425,
                                  time: "lbl_19_45".tr,
                                ),
                                SizedBox(height: 24.v),
                                _buildTime(
                                  context,
                                  userImage: ImageConstant.imgRectangle449,
                                  time: "lbl_19_45".tr,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 2.v,
                                bottom: 3.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 161.h,
                                    child: Text(
                                      "msg_treatment_planning".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  SizedBox(height: 33.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 6.h,
                                      right: 36.h,
                                    ),
                                    child: _buildFacebook(
                                      context,
                                      myList: "lbl_my_list".tr,
                                      download: "lbl_download".tr,
                                    ),
                                  ),
                                  SizedBox(height: 30.v),
                                  SizedBox(
                                    width: 196.h,
                                    child: Text(
                                      "msg_clinical_video_root".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  SizedBox(height: 34.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 6.h,
                                      right: 36.h,
                                    ),
                                    child: _buildFacebook(
                                      context,
                                      myList: "lbl_my_list".tr,
                                      download: "lbl_download".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildTime(
                                context,
                                userImage: ImageConstant.imgRectangle443,
                                time: "lbl_19_45".tr,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 192.h,
                                      child: Text(
                                        "msg_transferring_the".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(height: 37.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 6.h,
                                        right: 32.h,
                                      ),
                                      child: _buildFacebook(
                                        context,
                                        myList: "lbl_my_list".tr,
                                        download: "lbl_download".tr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String userImage,
    required String time,
  }) {
    return SizedBox(
      height: 108.v,
      width: 180.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: userImage,
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
                time,
                style: CustomTextStyles.bodySmall10.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFacebook(
    BuildContext context, {
    required String myList,
    required String download,
  }) {
    return SizedBox(
      width: 154.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFacebook,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 1.v,
            ),
            child: Text(
              myList,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrow2,
            height: 10.v,
            width: 1.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              download,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
