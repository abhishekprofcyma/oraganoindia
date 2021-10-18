import 'package:shared_preferences/shared_preferences.dart';

Future<bool?> getLogin() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getBool("login") != null
      ? preferences.getBool("login")
      : false;
}

Future<bool> saveLogin(bool isLogin) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return await preferences.setBool("login", isLogin);
}

Future<String> getToken() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getString("token") ?? "";
}

Future<bool> saveToken(String token) async {
  print("token saved $token");
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return await preferences.setString("token", token);
}

Future<bool> getIntroShow() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getBool("intro_show") ?? true;
}

Future<bool> saveIntroShow(bool show) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return await preferences.setBool("intro_show", show);
}

Future<String> getUserType() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getString("usertype") ?? "";
}

Future<bool> saveUserType(String type) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return await preferences.setString("usertype", type);
}
