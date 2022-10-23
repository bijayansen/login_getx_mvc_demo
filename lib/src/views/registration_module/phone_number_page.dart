import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/components/global_application_bar.dart';
import 'package:login_getx_mvc_demo/src/local_services/space_manager.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_validators.dart';
import 'package:login_getx_mvc_demo/src/utils/app_semantics.dart';
import 'package:login_getx_mvc_demo/src/utils/typo_constants/registration_module/phone_number_page_typos.dart';
import 'package:login_getx_mvc_demo/src/components/flexible_app_button.dart';
import 'package:login_getx_mvc_demo/src/components/primary_text_field.dart';
import 'package:login_getx_mvc_demo/src/controllers/registration_module/phone_number_controller.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/app_typography.dart';

class PhoneNumberPage extends StatelessWidget {
  PhoneNumberPage({Key? key}) : super(key: key);
  final PhoneNumberController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalApplicationBar(
          appBarTitle: PhoneNumberPageTypos.authentication),
      backgroundColor: AppDimens.scaffoldColor,
      body: _showBody(),
    );
  }

  Widget _showBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.defaultPagePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
    return Text(PhoneNumberPageTypos.signIn,
        style: AppTypography().getTs24(AppColors.cPrimaryColor));
  }

  Widget _showSubHeading() {
    return Text(PhoneNumberPageTypos.accessYourExistingText,
        style: AppTypography().getTs16(AppColors.cPrimaryColor));
  }

  Widget _showPhoneNumberField() {
    return Form(
      key: _controller.phoneNumberFormKey,
      child: PrimaryTextField(
          semanticText: AppSemantics.phoneNumberPageTextField,
          controller: _controller.phoneNumberController,
          labelText: PhoneNumberPageTypos.phoneNumber,
          hintText: PhoneNumberPageTypos.phoneNumberExampleText,
          keyBoardType: TextInputType.phone,
          textFormatter: [
            LengthLimitingTextInputFormatter(AppDimens.phoneNumberLimit)
          ],
          onChanged: (phoneNumber) => _controller.savePhoneNumber(phoneNumber),
          validator: (phoneNumber) =>
              AppValidators().phoneValidator(phoneNumber)),
    );
  }

  Widget _showNextButton() {
    return FlexibleAppButton(
        semanticLabel: AppSemantics.phoneNumberPageNextBtn,
        title: PhoneNumberPageTypos.next,
        onPressed: () => _controller.submitForm(),
        isFullWidth: true);
  }

  TextSpan _showPrivacyPolicyButton() {
    return TextSpan(
        text: PhoneNumberPageTypos.privacyPolicy,
        style: AppTypography().getTs12(AppColors.cSecondaryColor));
  }

  Widget _showPolicyText() {
    return Center(
      child: InkWell(
        onTap: () {},
        child: RichText(
            text: TextSpan(
                text: PhoneNumberPageTypos.bySigningInText,
                style: AppTypography().getTs12(AppColors.cGreyLightPrimary),
                children: <InlineSpan>[_showPrivacyPolicyButton()])),
      ),
    );
  }

  Widget _showExtraNotice() {
    return Text(
      PhoneNumberPageTypos.yourPersonalDataText,
      style: AppTypography().getTs12(AppColors.cGreyLightPrimary),
    );
  }
}
