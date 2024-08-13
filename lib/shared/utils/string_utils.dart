class StringUtils {
  static bool isValidEmail(String s) {
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(s);
  }

  static bool isValidPassword(String s) {
    RegExp regExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$');
    return regExp.hasMatch(s);
  }
}

extension StringExtension on String {
  bool get isValidEmail {
    if (isEmpty) return false;
    return StringUtils.isValidEmail(this);
  }

  bool get isValidPassword {
    if (isEmpty) return false;
    return StringUtils.isValidPassword(this);
  }
}
