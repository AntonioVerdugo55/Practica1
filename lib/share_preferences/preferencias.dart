import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static String _name = '';
  static bool _isLogged = false;
  static String _email = '';
  static String _lastName = '';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }
  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }
  static String get lastName {
    return _prefs.getString('lastName') ?? _lastName;
  }

  static set lastName(String lastName) {
    _lastName = lastName;
    _prefs.setString('lastName', lastName);
  }

  static bool get isLogged {
    return _prefs.getBool('isLogged') ?? _isLogged;
  }

  static set isLogged(bool value) {
    _isLogged = value;
    _prefs.setBool('isLogged', value);
  }
}
