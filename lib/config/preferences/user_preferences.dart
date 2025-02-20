
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference{

  Future<void> setToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("TOKEN", value);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("TOKEN");
  }

  void clearPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}