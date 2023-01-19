

extension exString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r'^[\d]{9}.+@(iau\.edu\.sa)+$'); //[\d]{10}+@(iau\.edu\.sa)+$
    return emailRegExp.hasMatch(this);
  }

  bool get isValidPassword{
    final passwordRegExp = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>");
    return passwordRegExp.hasMatch(this);
  }
  bool get isNotNull{
    return this!=null;
  }




}