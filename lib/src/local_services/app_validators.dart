import 'package:login_getx_mvc_demo/src/utils/typo_constants/registration_module/phone_number_page_typos.dart';

class AppValidators {
  // Regex For Phone Number [Validation].
  static const String _phoneValidatorRegex = r'(^(?:[+0]9)?[0-9]{10,12}$)';

  // [Validates] Mandatory Text Fields & Provide Error Message.
  String? validateRequiredField(String errorMsg, String value) =>
      value.isNotEmpty ? null : errorMsg;

  // [Validates] Phone Number Format Via Regex Expression.
  String? phoneValidator(String phoneNumber) {
    if (RegExp(_phoneValidatorRegex).hasMatch(phoneNumber)) {
      return null;
    }
    return phoneNumber.isEmpty
        ? PhoneNumberPageTypos.phoneNumberIsRequired
        : PhoneNumberPageTypos.pleaseEnterAValidPhoneNumber;
  }
}
