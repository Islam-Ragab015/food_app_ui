import 'package:shared_preferences/shared_preferences.dart';

mixin StorageHelper {
  Future<bool> saveTheme(String theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("theme", theme);
    return true;
  }

  Future<String?> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString("theme");
    return theme;
  }
}
