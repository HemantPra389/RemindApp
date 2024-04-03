class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    // Check if the phone number contains only digits
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Invalid phone number';
    }

    // Check if the phone number is a valid length (assuming 10 digits for simplicity)
    if (value.length != 10) {
      return 'Phone number must be 10 digits';
    }

    return null;
  }
}
