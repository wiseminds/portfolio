///Ekeh Wisdom ekeh.wisdom@gmail.com
///c2019
///Sun Nov 24 2019

/// helper Regular expressions to validate email, oasswords etc
mixin ValidatorMixin {
//   Minimum eight characters, at least one letter and one number:

// "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"
// Minimum eight characters, at least one letter, one number and one special character:

// "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
// Minimum eight characters, at least one uppercase letter, one lowercase letter and one number:

// "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"
// Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:

// "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
// Minimum eight and maximum 10 characters, at least one uppercase letter, one lowercase letter, one number and one special character:

// "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$"

  // Regular expression for valid email name@domain.com
  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  // Regular expression for valid for a string containing at least 8 characters, must contain a letter,
  // a number and a special character
  final RegExp _passwordRegExp = RegExp(
      r'^(?=.*[a-zA-Z])(?=.*[@$!%*?&])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$'); // ??
  // RegExp(r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-].{5,25}');

  final RegExp _name = RegExp(r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]');
  final RegExp _link = RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)');

  final RegExp _nigerianNumber = RegExp(r'^([0]?)(7|8|9)(0|1)\d{8}$');
  final RegExp _nigerianNumberFull = RegExp(r'^(234|0)(7|8|9)(0|1)\d{8}$');

  final RegExp _domain = RegExp(
      r'^[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)');
  final RegExp numberRegExp = RegExp(r'^\d+$'); // RegExp fto validate numbers
  final RegExp _phoneNumber =
      RegExp(r'^[0-9]{9,11}$'); // RegExp fto validate numbers
  // final RegExp _phoneNumber = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$'); // RegExp fto validate numbers

  //  final RegExp _cvvRegExp = RegExp(  r'^[0-9]{1}[0-9]{1}[0-9]{1}$',);
  final RegExp _pinRegExp = RegExp(
    r'^[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}$',
  );
  // final RegExp _otpRegExp = RegExp(
  //   r'^[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}}[0-9]{1}}[0-9]{1}$',
  // );
  final RegExp _atmNumberRegExp = RegExp(
      r'^[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}$');

  String? atmNumberValidator(String number) {
    number = number.replaceAll(' ', '');
    if (number.isEmpty) {
      return null;
    } else if (!_atmNumberRegExp.hasMatch(number)) {
      return 'Please enter a valid card number';
    }
  }

  //   String cvv2Validator(String text) {
  //   if (text.isEmpty) {
  //     return null;
  //   } else if (!_cvvRegExp.hasMatch(text)) {
  //     return '3 digit Number Required';
  //   } else
  //     return null;
  // }

  String? pinValidator(
    String text,
  ) {
    if (text.isEmpty) {
      return '* 4 digit number required';
    } else if (!_pinRegExp.hasMatch(text)) {
      return '* 4 digit number required';
    }
  }

  String? otpValidator(String? text) {
    text = text?.trim() ?? '';
    if (text.isEmpty) {
      return '* Otp must be  6 digits';
    } else if (!numberRegExp.hasMatch(text) || text.length != 6) {
      return '* Otp must be  6 digits';
    }
  }

  String? emailValidator(String? email, [bool allowEmpty = false]) {
    String e = email?.trim() ?? '';
    if (e.isEmpty) {
      return allowEmpty ? null : '* Please enter email';
    } else if (!_emailRegExp.hasMatch(e)) {
      return '* Please enter a valid email address';
    }
    return null;
  }

  String? addressValidator(String? address, [bool allowEmpty = false]) {
    String e = address?.trim() ?? '';
    if (e.isEmpty) {
      return allowEmpty ? null : '* Please enter address';
    } else if (address!.length < 5) {
      return '* address must be at least 5 characters';
    }
    return null;
  }

  String? cityValidator(String? address, [bool allowEmpty = false]) {
    String e = address?.trim() ?? '';
    if (e.isEmpty) {
      return allowEmpty ? null : '* Please enter city';
    } else if (address!.length < 2) {
      return '* city must be at least 2 characters';
    }
    return null;
  }

  String? linkValidator(String link, [bool allowEmpty = true]) {
    String e = link.trim();
    if (e.isEmpty) {
      return allowEmpty ? null : '* Please enter valid url';
    } else if (!_link.hasMatch(e)) {
      return '* Please Enter a valid url link';
    }
    return null;
  }

  String? domainValidator(String? link, [bool allowEmpty = true]) {
    String e = link?.trim() ?? '';
    if (e.isEmpty) {
      return allowEmpty ? null : '* Please enter valid domain';
    } else if (!_domain.hasMatch(e)) {
      return '* Please Enter a valid domain';
    }
    return null;
  }

  String? dateOfBirthValidator(DateTime? date, [bool allowEmpty = false]) {
    if (date == null) {
      return allowEmpty ? null : '* Please enter valid date';
      // } else if (!_domain.hasMatch(e)) {
      //   return '* Please Enter a valid domain';
    }
    return null;
  }

  String? passwordValidator(String? password) {
    String p = password?.trim() ?? '';
    if (p.isEmpty) {
      return '* Please enter password';
    } else if (p.length < 6) {
      return '* Password must be at least 6 characters';
    }
    return null;
  }

  String? newpasswordValidator(String password) {
    // String p = password?.trim();
    if (password.isEmpty) {
      return '* Please enter password';
    } else if (password.length < 8) {
      return '* Password must be at least 8 characters';
    } else if (!_passwordRegExp.hasMatch(password)) {
      return '* Password must contain a letter, number and a special character';
    }
    return null;
  }

  String? rePasswordValidator(String password, String pass) {
    if (password != pass) return 'Passwords do not match';
    return null;
  }

  String? nameValidator(String? name,
      [bool allowEmpty = false, String? title]) {
    if (name?.isEmpty ?? true) {
      return allowEmpty ? null : '* Please enter ${title ?? 'name'}';
    } else if (!_name.hasMatch(name!)) {
      return '* Please enter valid ${title ?? 'name'}';
    }
    return null;
  }

  String? phoneNumberValidator(String? number,
      [bool allowEmpty = false, bool restrictToNigeria = true]) {
    number = number?.replaceAll(' ', '') ?? '';
    if (number.isEmpty) {
      return allowEmpty ? null : 'Please enter phone number';
    } else if (!numberRegExp.hasMatch(number)) {
      return '* Phone number can only include numbers ';
    } else if (!_phoneNumber.hasMatch(number)) {
      return '* Please enter a valid phone number';
    } else if (!_nigerianNumber.hasMatch(number)) {
      return 'Please enter a valid Nigerian number';
    }
    return null;
  }

  String? phoneNumberFullValidator(String? number,
      [bool allowEmpty = false, bool restrictToNigeria = true]) {
    number = number!.replaceAll(' ', '');
    if (number.isEmpty) {
      return allowEmpty ? null : 'Please enter phone number';
    } else if (!numberRegExp.hasMatch(number)) {
      return '* Phone number can only include numbers ';
    } else if (!_nigerianNumberFull.hasMatch(number)) {
      return 'Please enter a valid Nigerian number';
    }
    return null;
  }

  String? multichoiceIUCValidator(String? number, [bool allowEmpty = false]) {
    number = number?.replaceAll(' ', '') ?? '';
    if (number.isEmpty) {
      return allowEmpty ? null : 'Please enter IUC number';
    } else if (!numberRegExp.hasMatch(number)) {
      return '* IUC number can only include digits ';
    } else if (number.length != 10) {
      return '* IUC number must be 10 digits';
    }
    // else if (!_phoneNumber.hasMatch(number))
    //   return '* Please enter a valid phone number';
    // else if (!_phoneNumber.hasMatch(number)) return 'Phone number can only include numbers and cannot be less than 11 characters';
    return null;
  }

  String? startimesValidator(String? number, [bool allowEmpty = false]) {
    number = number?.replaceAll(' ', '') ?? '';
    if (number.isEmpty) {
      return allowEmpty ? null : 'Please enter smart card number';
    } else if (!numberRegExp.hasMatch(number)) {
      return '* smart card number can only include digits ';
    }
    //  else if (number.length != 10) return '* IUC number must be 10 digits';
    // else if (!_phoneNumber.hasMatch(number))
    //   return '* Please enter a valid phone number';
    // else if (!_phoneNumber.hasMatch(number)) return 'Phone number can only include numbers and cannot be less than 11 characters';
    return null;
  }

  String? numberValidator(String number,
      {bool allowEmpty = false, String? text}) {
    if (number.isEmpty) {
      return allowEmpty ? null : '* Please enter ${text ?? 'number'}';
    } else if (!numberRegExp.hasMatch(number)) {
      return '* ${text ?? 'number'} can only include numbers ';
    } else if (!_phoneNumber.hasMatch(number)) {
      return '* ${text ?? 'number'} must be between 9 and 12 numbers ';
    }
    // else if (!_phoneNumber.hasMatch(number)) return 'Phone number can only include numbers and cannot be less than 11 characters';
    return null;
  }

  String? passcodeValidator(String? number, {bool allowEmpty = false}) {
    if (number?.isEmpty ?? true) {
      return allowEmpty ? null : '* Please enter passcode';
    } else if (!numberRegExp.hasMatch(number ?? '')) {
      return '* passcode can only include numbers ';
    } else if (number?.length != 4) {
      return '* passcode must be 4 digits ';
    }
    return null;
  }

  // String? amountValidator(String? number,
  //     {bool allowEmpty = false, String? text, double? max, double? min}) {
  //   number = number?.replaceAll(',', '') ?? '';
  //   if (number.isEmpty) {
  //     return allowEmpty ? null : '* Please enter amount';
  //   } else if (max != null &&
  //       (AmountFormatter().parseDouble(number) ?? 0) > max) {
  //     return '* Amount can not be greater than $max  ';
  //   } else if (min != null &&
  //       (AmountFormatter().parseDouble(number) ?? 0) < min) {
  //     return '* Amount can not be less than $min  ';
  //   }
  //   // else if (!_phoneNumber.hasMatch(number))
  //   //   return '* ${text ?? 'number'} must be between 9 and 12 numbers ';
  //   // else if (!_phoneNumber.hasMatch(number)) return 'Phone number can only include numbers and cannot be less than 11 characters';
  //   return null;
  // }

  String? salaryValidator(String? number, {bool allowEmpty = false}) {
    number = number?.replaceAll(',', '');
    if (number?.isEmpty ?? false) {
      return allowEmpty ? null : '* Please enter salary';
    } else if (!numberRegExp.hasMatch(number!)) {
      return '* Salary can only include numbers ';
    }
    // else if ((double.tryParse(number ) ?? 0.0) < 50000.00)
    //   return '* Salary must be greater than 50,000 ';
    // else if (!_phoneNumber.hasMatch(number)) return 'Phone number can only include numbers and cannot be less than 11 characters';
    return null;
  }

  String? salaryDayValidator(String? number, {bool allowEmpty = false}) {
    number = number?.replaceAll(',', '') ?? '';
    if (number.isEmpty) {
      return allowEmpty ? null : '* Please enter salary day';
    } else if ((double.tryParse(number) ?? 0) < 1 ||
        (double.tryParse(number) ?? 34) > 31) {
      return '* Salary day must be a number between 1 and 31 ';
    }
    return null;
  }

  String? accountNoValidator(String? number,
      {bool allowEmpty = true, String? text}) {
    number = number?.replaceAll(' ', '') ?? '';
    if (number.isEmpty) {
      return allowEmpty ? null : '* Please enter ${text ?? 'number'}';
    } else if (!numberRegExp.hasMatch(number)) {
      return '* Account number can only include numbers ';
    } else if (number.length != 10) {
      return '* Account number must be 10 digits';
    }
    return null;
  }

  String? bvnNoValidator(String? number, {bool allowEmpty = false}) {
    number = number?.replaceAll(' ', '');
    if (number?.isEmpty ?? true) {
      return allowEmpty ? null : '* Please enter your BVN';
    } else if (!numberRegExp.hasMatch(number!)) {
      return '* BVN can only include numbers ';
    } else if (number.length != 11) {
      return '* BVN number must be 11 digits';
    }
    return null;
  }

  String? ninNoValidator(String? number, {bool allowEmpty = false}) {
    number = number?.replaceAll(' ', '');
    if (number?.isEmpty ?? true) {
      return allowEmpty ? null : '* Please enter your NIN';
    } else if (!numberRegExp.hasMatch(number!)) {
      return '* NIN can only include numbers ';
    } else if (number.length != 11) {
      return '* NIN number must be 11 digits';
    }
    return null;
  }

  String? idValidator(String? number, {bool allowEmpty = false}) {
    number = number?.replaceAll(' ', '') ?? '';
    if (number.isEmpty) {
      return allowEmpty ? null : '* Please enter your ID Number';
    }
    // else if (!numberRegExp.hasMatch(number))
    //   return '* BVN can only include numbers ';
    // else if (number.length != 11) return '* BVN number must be 11 digits';
    return null;
  }
}
