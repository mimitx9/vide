import 'bloc/video_detail_class_bloc.dart';import 'models/video_detail_class_model.dart';import 'package:flutter/material.dart';import 'package:onito_s_application1/core/app_export.dart';import 'package:onito_s_application1/core/utils/validation_functions.dart';import 'package:onito_s_application1/presentation/home_new_user_one_page/home_new_user_one_page.dart';import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:onito_s_application1/widgets/app_bar/appbar_title.dart';import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:onito_s_application1/widgets/custom_bottom_bar.dart';import 'package:onito_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class VideoDetailClassScreen extends StatelessWidget {VideoDetailClassScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<VideoDetailClassBloc>(create: (context) => VideoDetailClassBloc(VideoDetailClassState(videoDetailClassModelObj: VideoDetailClassModel()))..add(VideoDetailClassInitialEvent()), child: VideoDetailClassScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 23.v), child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 35.h), child: BlocSelector<VideoDetailClassBloc, VideoDetailClassState, TextEditingController?>(selector: (state) => state.mobileNoController, builder: (context, mobileNoController) {return CustomTextFormField(controller: mobileNoController, hintText: "lbl_0977089996".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillOnPrimary);})), SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 35.h), child: BlocSelector<VideoDetailClassBloc, VideoDetailClassState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "msg_gsbstuananh_gmail_com".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillOnPrimary);})), SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 35.h), child: BlocSelector<VideoDetailClassBloc, VideoDetailClassState, TextEditingController?>(selector: (state) => state.tuanAnhLeController, builder: (context, tuanAnhLeController) {return CustomTextFormField(controller: tuanAnhLeController, hintText: "lbl_tuan_anh_le".tr, textInputAction: TextInputAction.done);})), SizedBox(height: 43.v), Divider(color: theme.colorScheme.primary.withOpacity(0.1)), SizedBox(height: 43.v), Padding(padding: EdgeInsets.symmetric(horizontal: 56.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("lbl_i_m_t_kh_u".tr, style: CustomTextStyles.bodyLarge16_1)), CustomImageView(imagePath: ImageConstant.imgVectorPrimary, height: 25.v, width: 17.h)])), SizedBox(height: 40.v), Padding(padding: EdgeInsets.only(left: 57.h, right: 50.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(top: 3.v, bottom: 7.v), child: Text("lbl_x_a_t_i_kho_n".tr, style: CustomTextStyles.bodyLargeOnPrimaryContainer16))), Opacity(opacity: 0.5, child: SizedBox(height: 30.adaptSize, width: 30.adaptSize, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgPolygon25Primary, height: 30.adaptSize, width: 30.adaptSize, radius: BorderRadius.circular(3.h), alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl".tr, style: CustomTextStyles.bodyMedium_1)))])))])), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 36.h, top: 21.v, bottom: 19.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_t_i_kho_n".tr)); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Profile: return AppRoutes.homeNewUserOnePage; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Iconuser: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeNewUserOnePage: return HomeNewUserOnePage.builder(context); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }