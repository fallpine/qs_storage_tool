import 'package:shared_preferences/shared_preferences.dart';

class QsStorageTool {
  /// 设置bool值
  static Future<bool> setBool({
    required String key,
    required bool value,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  /// 获取bool值
  static Future<bool?> getBool({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  /// 设置double值
  static Future<bool> setDouble({
    required String key,
    required double value,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.setDouble(key, value);
  }

  /// 获取double值
  static Future<double?> getDouble({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  /// 设置int值
  static Future<bool> setInt({required String key, required int value}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  /// 获取int值
  static Future<int?> getInt({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  /// 设置String值
  static Future<bool> setString({
    required String key,
    required String value,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  /// 获取String值
  static Future<String?> getString({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  /// 设置StringList值
  static Future<bool> setStringList({
    required String key,
    required List<String> value,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.setStringList(key, value);
  }

  /// 获取StringList值
  static Future<List<String>?> getStringList({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  /// 移除指定key
  static Future<void> remove({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
