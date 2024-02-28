import 'package:shared_preferences/shared_preferences.dart';

import '../../../../di/app_di.dart';
import '../SharedPref.dart';

class SharedPrefImpl extends SharedPref {
  final sharedPref = getIt<SharedPreferences>();
  final PIN = "PIN";
  final PASSWORD = "PASSWORD";

  @override
  String getPin() {
    return sharedPref.getString(PIN) ?? "";
  }

  @override
  String getSecuredPassword() {
    return sharedPref.getString(PASSWORD) ?? "";
  }

  @override
  void setPin(String pin) {
    sharedPref.setString(PIN, pin);
  }

  @override
  void setSecuredPassword(String password) {
    sharedPref.setString(PASSWORD, password);
  }
}
