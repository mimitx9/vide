import 'bloc/login_two_bloc.dart';import 'models/login_two_model.dart';import 'package:flutter/material.dart';import 'package:onito_s_application1/core/app_export.dart';import 'package:onito_s_application1/core/utils/validation_functions.dart';import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:onito_s_application1/widgets/app_bar/appbar_title_image.dart';import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:onito_s_application1/widgets/custom_elevated_button.dart';import 'package:onito_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LoginTwoScreen extends StatelessWidget {LoginTwoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<LoginTwoBloc>(create: (context) => LoginTwoBloc(LoginTwoState(loginTwoModelObj: LoginTwoModel()))..add(LoginTwoInitialEvent()), child: LoginTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 21.v), child: Column(children: [_buildMobileNo(context), SizedBox(height: 15.v), _buildSettings(context), SizedBox(height: 15.v), _buildEmail(context), SizedBox(height: 15.v), _buildHtn(context), Spacer(flex: 28), _buildDangKy(context), Spacer(flex: 71)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 36.h, top: 19.v, bottom: 21.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitleImage(imagePath: ImageConstant.imgGroup)); } 
/// Section Widget
Widget _buildMobileNo(BuildContext context) { return BlocSelector<LoginTwoBloc, LoginTwoState, TextEditingController?>(selector: (state) => state.mobileNoController, builder: (context, mobileNoController) {return CustomTextFormField(controller: mobileNoController, hintText: "lbl_0977089996".tr, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillOnPrimary);}); } 
/// Section Widget
Widget _buildSettings(BuildContext context) { return BlocBuilder<LoginTwoBloc, LoginTwoState>(builder: (context, state) {return CustomTextFormField(controller: state.settingsController, hintText: "lbl_m_t_kh_u".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<LoginTwoBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 23.v, 22.h, 23.v), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 13.v, width: 20.h))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 20.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return BlocSelector<LoginTwoBloc, LoginTwoState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "lbl_email".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}); } 
/// Section Widget
Widget _buildHtn(BuildContext context) { return BlocSelector<LoginTwoBloc, LoginTwoState, TextEditingController?>(selector: (state) => state.htnController, builder: (context, htnController) {return CustomTextFormField(controller: htnController, hintText: "lbl_h_t_n".tr, hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16, textInputAction: TextInputAction.done);}); } 
/// Section Widget
Widget _buildDangKy(BuildContext context) { return CustomElevatedButton(height: 60.v, text: "lbl_ng_k".tr.toUpperCase(), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: theme.textTheme.titleSmall!); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
