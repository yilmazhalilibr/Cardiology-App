import 'package:shared_preferences/shared_preferences.dart';

class test {
  late SharedPreferences _sharedPrefObject;
  String _testVerisi = 'hs-cTn T(Elecsys; Roche)';
  String get testVerisi => _testVerisi;
  void toggleTheme() {
    saveThemeToShared('hs-cTn T(Elecsys; Roche)');
  }

  Future<void> createSharedPrefObject() async {
    _sharedPrefObject = await SharedPreferences.getInstance();
  }

  void saveThemeToShared(String value) {
    _sharedPrefObject.setString('testVeri', value);
  }

  void loadThemeFromSharedPref() async {
    await createSharedPrefObject();
    _sharedPrefObject.getString('testVeri');
  }
}
