import 'package:intl/intl.dart';

Function errorCodeProcessor = (String error) {
  String? processedError = error.replaceAll('-', ' ');
  processedError = toBeginningOfSentenceCase(processedError);
  return processedError;
};

// VALIDATORS
String? Function(String?)? nameValidator = (value) {
  if (value == null || value.isEmpty) {
    return "Name can't be empty";
  } else {
    return null;
  }
};

String? Function(String?)? emailValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter an email';
  }
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
};

String? Function(String?)? passValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a password';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters long';
  }
  return null;
};
