import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hamzallc_task/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class HiveManager {
  // Initializations Methods
  Future<Uint8List> _setupSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    final containsEncryptionKey =
        await secureStorage.containsKey(key: AppConstants.secureBoxKey);
    if (!containsEncryptionKey) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: AppConstants.secureBoxKey,
        value: base64UrlEncode(key),
      );
    }
    final value = await secureStorage.read(key: AppConstants.secureBoxKey);
    return base64Url.decode(value!);
  }

  Future<Box<dynamic>> initializePrefsBox() async {
    return Hive.openBox<dynamic>(AppConstants.preferences);
  }

  Future<Box<dynamic>> initializeSettingsBox() async {
    return Hive.openBox<dynamic>(AppConstants.settings);
  }

  Future<Box<String>> initializeCacheBox() async {
    final encryptionKey = await _setupSecureKey();
    return Hive.openBox<String>(
      AppConstants.cacheBox,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }
}
