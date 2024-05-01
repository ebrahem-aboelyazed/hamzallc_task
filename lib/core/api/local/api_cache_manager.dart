import 'dart:convert';

import 'package:hamzallc_task/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiCacheManager {
  Box<String> get cacheBox => Hive.box<String>(AppConstants.cacheBox);

  dynamic getCachedDataByKey(String key) {
    final data = cacheBox.get(key);
    if (data == null) return null;
    final decodedData = jsonDecode(data);
    return decodedData;
  }

  Future<void> putDataInCache(String key, dynamic data) async {
    final encodedData = jsonEncode(data);
    await cacheBox.put(key, encodedData);
  }
}
