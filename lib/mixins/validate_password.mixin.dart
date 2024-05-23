import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';

/// Errors exposed for password validation
enum ValidatePasswordError {
  empty,
  format,
}

/// This extension transforms [ValidatePasswordError] in
/// user readable strings based on current language of the app
extension ValidatePasswordErrorLabelExtension on ValidatePasswordError {
  String label(BuildContext context) => switch (this) {
        ValidatePasswordError.empty => context.t.errors.password.empty,
        ValidatePasswordError.format => context.t.errors.password.invalid
      };
}

/// Mixin to validate password
/// exposed [validatePassword] function that returns an error if the password
/// is not valid
mixin ValidatePassword {
  /// Validate password based on [password] value and an intenal [RegExp]
  /// Returns a [ValidatePasswordError] or `null` if the password is valid
  ValidatePasswordError? validatePassword(String? password) {
    if (password == null) {
      return null;
    }

    /// Any 6 characters long
    final pattern = r'.{6,}';
    final regex = RegExp(pattern);

    return regex.hasMatch(password) ? null : ValidatePasswordError.format;
  }
}
