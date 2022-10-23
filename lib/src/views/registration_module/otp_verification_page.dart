import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/controllers/registration_module/otp_verification_controller.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_validators.dart';
import 'package:login_getx_mvc_demo/src/utils/app_semantics.dart';
import 'package:login_getx_mvc_demo/src/utils/typo_constants/registration_module/otp_verification_typos.dart';
import 'package:login_getx_mvc_demo/src/components/flexible_app_button.dart';
import 'package:login_getx_mvc_demo/src/components/primary_text_field.dart';
import 'package:login_getx_mvc_demo/src/local_services/space_manager.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/app_typography.dart';
import 'package:login_getx_mvc_demo/src/components/global_application_bar.dart';

class OtpVerificationPage extends StatelessWidget {
  OtpVerificationPage({Key? key}) : super(key: key);
  final OtpVerificationController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalApplicationBar(
          appBarTitle: OtpVerificationPageTypos.verification),
      backgroundColor: AppColors.cBackgroundColor,
      body: _showBody(),
    );
  }

  Widget _showBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.defaultPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceManager().secondarySpacing(),
            _showHeading(),
            SpaceManager().secondarySpacing(),
            _showSubHeading(),
            SpaceManager().secondarySpacing(),
            _showPhoneNumberField(),
            SpaceManager().secondarySpacing(),
            _showNextButton(),
            SpaceManager().secondarySpacing(),
            _showPolicyText(),
            SpaceManager().secondarySpacing(),
            _showExtraNotice()
          ],
        ),
      ),
    );
  }

  Widget _showHeading() {
    return Text(OtpVerificationPageTypos.verifyOtp,
        style: AppTypography().getTs24(AppColors.cPrimaryColor));
  }

  Widget _showSubHeading() {
    return Text(
        '${OtpVerificationPageTypos.enterTheOtpSentText}${_controller.userPhoneNumber}',
        style: AppTypography().getTs16(AppColors.cPrimaryColor));
  }

  Widget _showPhoneNumberField() {
    return Form(
      key: _controller.otpFormKey,
      child: PrimaryTextField(
          semanticText: AppSemantics.otpPageTextField,
          controller: _controller.otpVerificationController,
          labelText: OtpVerificationPageTypos.oneTimePassword,
          hintText: OtpVerificationPageTypos.otpExampleText,
          keyBoardType: TextInputType.number,
          textFormatter: [
            LengthLimitingTextInputFormatter(AppDimens.otpFieldSize)
          ],
          onChanged: (otpText) => _controller.saveOtp(otpText),
          validator: (otpText) => AppValidators().validateRequiredField(
              OtpVerificationPageTypos.otpIsRequired, otpText)),
    );
  }

  Widget _showNextButton() {
    return FlexibleAppButton(
        semanticLabel: AppSemantics.otpPageVerifyBtn,
        title: OtpVerificationPageTypos.verify,
        onPressed: () => _controller.submitForm(),
        isFullWidth: true);
  }

  TextSpan _showPrivacyPolicyButton() {
    return TextSpan(
        text: OtpVerificationPageTypos.privacyPolicy,
        style: AppTypography().getTs12(AppColors.cSecondaryColor));
  }

  Widget _showPolicyText() {
    return Center(
      child: InkWell(
        onTap: () {},
        child: RichText(
            text: TextSpan(
                text: OtpVerificationPageTypos.bySigningInText,
                style: AppTypography().getTs12(AppColors.cGreyLightPrimary),
                children: <InlineSpan>[_showPrivacyPolicyButton()])),
      ),
    );
  }

  Widget _showExtraNotice() {
    return Text(
      OtpVerificationPageTypos.yourPersonalDataText,
      style: AppTypography().getTs12(AppColors.cGreyLightPrimary),
    );
  }
}
