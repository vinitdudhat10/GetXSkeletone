
class ConstValidation{
  // Email validation
  bool validateEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return emailRegex.hasMatch(email);
  }

  // Password validation
  bool containsCapitalLetter(String value) {
    return value.contains(RegExp(r'[A-Z]'));
  }
  bool containsUniqueCharacters(String value) {
    var uniqueChars = value.split('').toSet();
    return uniqueChars.length == value.length;
  }
}