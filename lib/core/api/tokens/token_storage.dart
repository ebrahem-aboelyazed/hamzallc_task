import 'package:hamzallc_task/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// Manages storage of tokens.
@LazySingleton()
class TokenStorage {
  /// Retrieves the credentials box used for storing tokens.
  Box<String> get credentialsBox =>
      Hive.box<String>(AppConstants.credentialsBox);

  /// Retrieves a token by its key from the credentials box.
  ///
  /// Parameters:
  ///   - [key] (String): The key associated with the token.
  ///
  /// Returns:
  ///   The token associated with the specified key, or null if not found.
  String? getToken(String key) {
    final data = credentialsBox.get(key);
    return data;
  }

  /// Stores a token in the credentials box with the specified key.
  ///
  /// Parameters:
  ///   - [key] (String): The key associated with the token.
  ///   - [token] (String): The token to be stored.
  ///
  /// Returns:
  ///   A Future that completes when the token is successfully stored.
  Future<void> putToken(String key, String token) async {
    await credentialsBox.put(key, token);
  }

  /// Clears all tokens from the credentials box.
  ///
  /// Returns:
  ///   A Future that completes when all tokens are successfully cleared.
  Future<void> clearTokens() async {
    if (credentialsBox.isNotEmpty) {
      await credentialsBox.clear();
      await credentialsBox.flush();
    }
  }
}
