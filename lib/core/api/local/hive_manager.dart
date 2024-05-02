import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hamzallc_task/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// Manages initialization and access to Hive boxes for storing data securely.
@Singleton()
class HiveManager {
  /// Sets up a secure encryption key for encrypting sensitive data.
  ///
  /// Returns:
  ///   A Future that resolves to a Uint8List containing the encryption key.
  Future<Uint8List> _setupSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    final containsEncryptionKey = await secureStorage.containsKey(
      key: AppConstants.secureBoxKey,
    );
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

  /// Initializes the preferences box for storing app preferences.
  ///
  /// Returns:
  ///   A Future that resolves to a
  ///   Box<dynamic> representing the preferences box.
  Future<Box<dynamic>> initializePrefsBox() async {
    return Hive.openBox<dynamic>(AppConstants.preferences);
  }

  /// Initializes the settings box for storing app settings.
  ///
  /// Returns:
  ///   A Future that resolves to a Box<dynamic> representing the settings box.
  Future<Box<dynamic>> initializeSettingsBox() async {
    return Hive.openBox<dynamic>(AppConstants.settings);
  }

  /// Initializes the cache box for storing cached data.
  ///
  /// Returns:
  ///   A Future that resolves to a Box<String> representing the cache box.
  Future<Box<String>> initializeCacheBox() async {
    final encryptionKey = await _setupSecureKey();
    return Hive.openBox<String>(
      AppConstants.cacheBox,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  /// Initializes the credentials box for storing user credentials.
  ///
  /// Returns:
  ///   A Future that resolves to a
  ///   Box<String> representing the credentials box.
  Future<Box<String>> initializeCredentialsBox() async {
    final encryptionKey = await _setupSecureKey();
    return Hive.openBox<String>(
      AppConstants.credentialsBox,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }
}
