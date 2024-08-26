import 'dart:convert';

import 'package:with_edu/app_config.dart';
import 'package:with_edu/data/models/user/user.dart';

class UserSharedPrefsService {
  static const String _userPrefsKey = '__user_data__';

  static Future<void> updateUser(User user) async =>
      await sharedPrefs.setString(_userPrefsKey, jsonEncode(user.toMap()));

  static User? getUser() {
    final data = sharedPrefs.getString(_userPrefsKey);

    if (data == null) return null;

    return User.fromJson(jsonDecode(data));
  }

  static Future<bool> clearUser() async =>
      await sharedPrefs.remove(_userPrefsKey);
}
