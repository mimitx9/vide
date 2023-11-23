import 'bloc/video_detail_class_two_bloc.dart';import 'models/video_detail_class_two_model.dart';import 'package:flutter/material.dart';import 'package:onito_s_application1/core/app_export.dart';import 'package:onito_s_application1/core/utils/validation_functions.dart';import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:onito_s_application1/widgets/app_bar/appbar_title.dart';import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:onito_s_application1/widgets/custom_elevated_button.dart';import 'package:onito_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class VideoDetailClassTwoScreen extends StatelessWidget {VideoDetailClassTwoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<VideoDetailClassTwoBloc>(create: (context) => VideoDetailClassTwoBloc(VideoDetailClassTwoState(videoDetailClassTwoModelObj: VideoDetailClassTwoModel()))..add(VideoDetailClassTwoInitialEvent()), child: VideoDetailClassTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 23.v), child: Column(children: [BlocSelector<VideoDetailClassTwoBloc, VideoDetailClassTwoState, TextEditingController?>(selector: (state) => state.mtkhucController, builder: (context, mtkhucController) {return CustomTextFormField(controller: mtkhucController, hintText: "lbl_m_t_kh_u_c".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, borderDecoration: TextFormFieldStyleHelper.fillOnPrimary);}), SizedBox(height: 15.v), BlocBuilder<VideoDetailClassTwoBloc, VideoDetailClassTwoState>(builder: (context, state) {return CustomTextFormField(controller: state.settingsController, hintText: "lbl_m_t_kh_u_m_i".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<VideoDetailClassTwoBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 23.v, 22.h, 23.v), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 13.v, width: 20.h))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 20.v));}), Spacer(flex: 46), CustomElevatedButton(height: 60.v, text: "lbl_l_u4".tr.toUpperCase(), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: theme.textTheme.titleSmall!), Spacer(flex: 53)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 36.h, top: 21.v, bottom: 19.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_i_m_t_kh_u2".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
