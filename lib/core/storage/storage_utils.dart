import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  static StorageUtil _storageUtil;
  static SharedPreferences _preferences;

  static Future getInstance() async {
    if (_storageUtil == null) {
      // keep local instance till it is fully initialized.
      var secureStorage = StorageUtil._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil;
  }

  StorageUtil._();

  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // put string
  static Future setPhone(String phoneNumber) async {
    if (_preferences == null) return null;
    await _preferences.setBool("HAS_PROFILE", true);
    await _preferences.setBool("INTRO", false);
    await _preferences.setString("PHONE_NUMBER", phoneNumber);
  }

  // put string
  static Future setProfileData(String fullName, String address) async {
    if (_preferences == null) return null;
    await _preferences.setString("ADDRESS", address);
    await _preferences.setString("FULL_NAME", fullName);
  }

  // put string
  static Future setTariff(String tariff) async {
    if (_preferences == null) return null;
    await _preferences.setString("TARIFF", tariff);
  }

  // put string
  static Future setTariffId(int tariffId) async {
    if (_preferences == null) return null;
    await _preferences.setInt("TARIFF_ID", tariffId);
  }

  // put string
  static Future setBalance(int balance) async {
    if (_preferences == null) return null;
    await _preferences.setInt("BALANCE", balance);
  }

  static Future setProfileUrl(String url) async {
    if (_preferences == null) return '';
    await _preferences.setString('PROFILE_URL', url);
  }

  static String getProfileUrl() {
    if (_preferences == null) return '';
    return _preferences.getString('PROFILE_URL') ?? '';
  }

  // get string
  static String getProfile() {
    if (_preferences == null) return null;
    return _preferences.getString('ID') ?? "";
  }

  // get string
  static int getBalance() {
    if (_preferences == null) return null;
    return _preferences.getInt('BALANCE') ?? 0;
  }
  // get string
  static int getTariffId() {
    if (_preferences == null) return null;
    return _preferences.getInt('TARIFF_ID') ?? 0;
  }

  // get string
  static String getPhoneNumber() {
    if (_preferences == null) return null;
    return _preferences.getString('PHONE_NUMBER') ?? "";
  }

  // get string
  static String getFullName() {
    if (_preferences == null) return null;
    return _preferences.getString('FULL_NAME') ?? "";
  }

  // get string
  static String getActiveTariff() {
    if (_preferences == null) return null;
    return _preferences.getString('TARIFF') ?? "";
  }

  // get string
  static String getAddress() {
    if (_preferences == null) return null;
    return _preferences.getString('ADDRESS') ?? "";
  }
  // get string
  static String getMail() {
    if (_preferences == null) return null;
    return _preferences.getString('MAIL') ?? "";
  }
  static bool hasProfile() {
    if (_preferences == null) return false;
    return _preferences.getBool('HAS_PROFILE') ?? false;
  }

  static String getToken() {
    if (_preferences == null) return '';
    return _preferences.getString("TOKEN") ?? '';
  }

  static Future setToken(String token) async {
    if (_preferences == null) return '';
    _preferences.setString("TOKEN", token);
  }

  static Future setInformation(String fullName, String mail) async {
    if (_preferences == null) return '';
    _preferences.setString("FULL_NAME", fullName);
    _preferences.setString("MAIL", mail);
  }

  static Future<bool> removeProfile() async {
    if (_preferences == null) return null;
    var lanCode = _preferences.getString("LANGUAGE_CODE");
    var a = await _preferences.clear();
    _preferences.setString("LANGUAGE_CODE", lanCode);
    _preferences = null;
    _storageUtil = null;
    return a;
  }

  static Future saveNotification(bool value) async {
    if (_preferences == null) return;
    await _preferences.setBool("NOTIFICATION", value);
  }

  static Future<bool> getNotification() async {
    if (_preferences == null) return true;
    return _preferences.getBool("NOTIFICATION") ?? true;
  }

  static saveFCMToken(String token) async {
    if (_preferences == null) return;
    await _preferences.setString("FCM_TOKEN", token);
  }

  static Future<String> getFCMToken() async {
    if (_preferences == null) return '';
    return _preferences.getString("FCM_TOKEN");
  }

  static Future setShowIntro(bool b) async {
    if (_preferences == null) return;
    await _preferences.setBool("INTRO", b);
  }

  static bool showIntro() {
    if (_preferences == null) return true;
    return _preferences.getBool("INTRO") ?? true;
  }

  static bool getRegistrationStatus() {
    if (_preferences == null) return false;
    return _preferences.getBool("REGISTRATION_STATUS") ?? false;
  }

  static Future setRegistrationStatus(bool status) async {
    if (_preferences == null) return;
    await _preferences.setBool("REGISTRATION_STATUS", status);
  }

  static Future setLastMessageDate(String date) async {
    if (_preferences == null) return;
    await _preferences.setString("LAST_DATE_MESSAGE", date);
  }

  static String getLastMessageDate() {
    if (_preferences == null) return '';
    return _preferences.getString("LAST_DATE_MESSAGE") ?? "";
  }
}
