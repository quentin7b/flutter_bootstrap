import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';

/// Errors exposed for email validation
enum ValidateEmailError {
  empty,
  format,
}

/// This extension transforms [ValidateEmailError] in
/// user readable strings based on current language of the app
extension ValidateEmailErrorLabelExtension on ValidateEmailError {
  String label(BuildContext context) => switch (this) {
        ValidateEmailError.empty => context.t.errors.email.empty,
        ValidateEmailError.format => context.t.errors.email.invalid
      };
}

/// Mixin to validate email
/// exposed [validateEmail] function that returns an error if the email
/// is not valid
mixin ValidateEmail {
  /// Validate email based on [email] value and an optional [allowEmpty] flag
  /// Returns a [ValidateEmailError] or `null` if the email is valid
  ValidateEmailError? validateEmail(String? email, {bool allowEmpty = false}) {
    if (email == null) {
      return null;
    }
    if (email.isEmpty) {
      return allowEmpty ? null : ValidateEmailError.empty;
    }

    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return regex.hasMatch(email) ? null : ValidateEmailError.format;
  }
}
