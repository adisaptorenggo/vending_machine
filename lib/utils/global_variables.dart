class GlobalVar {
  static final GlobalVar _singleton = GlobalVar._internal();

  factory GlobalVar() {
    return _singleton;
  }

  GlobalVar._internal();

  // double totalCash;

}
