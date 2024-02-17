class AppConfig {
  //# CONFIG
  static String yourName = "syamsul Maarif";
  static String phoneNumber = "089520177891";
  //# ---------------------------------------
  //# ---------------------------------------

  static String get baseUrl {
    var storage = yourName.replaceAll(" ", "-").toLowerCase();
    storage = "$storage-$phoneNumber";
    return "http://capekngoding.com:8080/$storage/api";
  }
}
