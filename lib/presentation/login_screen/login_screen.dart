import 'bloc/login_bloc.dart';import 'models/login_model.dart';import 'package:flutter/material.dart';import 'package:onito_s_application1/core/app_export.dart';import 'package:onito_s_application1/widgets/custom_icon_button.dart';import 'package:onito_s_application1/widgets/custom_text_form_field.dart';import 'package:onito_s_application1/domain/googleauth/google_auth_helper.dart';import 'package:onito_s_application1/domain/facebookauth/facebook_auth_helper.dart';class LoginScreen extends StatelessWidget {const LoginScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LoginBloc>(create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))..add(LoginInitialEvent()), child: LoginScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 1.v), child: Column(children: [_buildView(context), SizedBox(height: 46.v), CustomImageView(imagePath: ImageConstant.imgGroup, height: 30.v, width: 156.h), SizedBox(height: 46.v), Padding(padding: EdgeInsets.symmetric(horizontal: 35.h), child: BlocSelector<LoginBloc, LoginState, TextEditingController?>(selector: (state) => state.sinthoiController, builder: (context, sinthoiController) {return CustomTextFormField(controller: sinthoiController, hintText: "lbl_s_i_n_tho_i".tr, hintStyle: CustomTextStyles.bodyLarge16_2, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.fillOnPrimary);})), SizedBox(height: 34.v), Text("lbl_ho_c".tr, style: CustomTextStyles.bodyLargePrimaryContainer_1), SizedBox(height: 32.v), Padding(padding: EdgeInsets.symmetric(horizontal: 65.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 60.adaptSize, width: 60.adaptSize, padding: EdgeInsets.all(17.h), decoration: IconButtonStyleHelper.outlineOnPrimary, onTap: () {onTapBtnGoogle(context);}, child: CustomImageView(imagePath: ImageConstant.imgGoogleOnerror)), Spacer(flex: 50), CustomIconButton(height: 60.adaptSize, width: 60.adaptSize, padding: EdgeInsets.all(17.h), decoration: IconButtonStyleHelper.outlineOnPrimary, child: CustomImageView(imagePath: ImageConstant.imgVectorPrimary60x60)), Spacer(flex: 50), CustomIconButton(height: 60.adaptSize, width: 60.adaptSize, padding: EdgeInsets.all(17.h), decoration: IconButtonStyleHelper.outlineOnPrimary, onTap: () {onTapBtnFacebook(context);}, child: CustomImageView(imagePath: ImageConstant.imgFacebookLightBlue700))])), Spacer(), SizedBox(height: 57.v), Text("msg_tr_i_nghi_m_kh_ng".tr, style: CustomTextStyles.bodyLargePrimaryContainer_1)])))); } 
/// Section Widget
Widget _buildView(BuildContext context) { return SizedBox(height: 383.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgGroup594Primary, height: 378.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Container(height: 129.v, width: double.maxFinite, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.black900, appTheme.black900.withOpacity(0)]))))])); } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Google sign-in process fails.
onTapBtnGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
/// Performs a Facebook sign-in and returns a [FacebookUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Facebook sign-in process fails.
onTapBtnFacebook(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
 }
