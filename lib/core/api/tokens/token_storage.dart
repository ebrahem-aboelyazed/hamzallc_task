import 'package:hamzallc_task/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class TokenStorage {
  Box<String> get credentialsBox =>
      Hive.box<String>(AppConstants.credentialsBox);

  String? getToken(String key) {
    final data = credentialsBox.get(key);
    return data;
  }

  Future<void> putToken(String key, String token) async {
    await credentialsBox.put(key, token);
  }

  Future<void> clearTokens() async {
    if (credentialsBox.isNotEmpty) {
      await credentialsBox.clear();
      await credentialsBox.flush();
    }
  }
}
