abstract final class ValidationUtils {
  const ValidationUtils._();

  static bool hasMinimumLength(String val) {
    final regex = RegExp(r'^.{8,}$');
    return regex.hasMatch(val);
  }
}
