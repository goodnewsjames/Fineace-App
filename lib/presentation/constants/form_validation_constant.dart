class FormValidationConstant {
  static int passwordMinimumLength = 6;
  static String? validateUserName(String? value) {
    if (value?.isEmpty == true) {
      return 'Cannot be empty';
    }
    return null;
  }

  static String? validateLoginPassword(String? value) {
    if (value == null) return 'Cannot be empty';

    if (value.length >= 6) {
      return null;
    }
    return 'Password must be at least 6 characters long';
  }

  static String? validateEmail(String? value) {
    if (value?.isEmpty == true) {
      return 'Cannot be empty';
    }
    if (!RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{1,253}[a-zA-Z0-9])?)+$",
    ).hasMatch(value ?? "")) {
      return "Please enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < passwordMinimumLength) {
      return 'Password must be at least 8 characters long';
    } else if (!RegExp(
      r'(?=.*?[A-Z])',
    ).hasMatch(password)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(
      r'(?=.*?[a-z])',
    ).hasMatch(password)) {
      return 'Password must contain at least one lowercase letter';
    } else if (!RegExp(
      r'(?=.*?[0-9])',
    ).hasMatch(password)) {
      return 'Password must contain at least one digit';
    } else if (!RegExp(
      r'(?=.*?[#?!@$%^&*-])',
    ).hasMatch(password)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validateConfirmPassword({
    String? password,
    String? confirmPassword,
  }) {
    if (confirmPassword == null ||
        confirmPassword.isEmpty) {
      return 'Confirm password cannot be empty';
    } else if (confirmPassword != password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
