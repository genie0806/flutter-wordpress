import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureDataSource {
  final storage = const FlutterSecureStorage();
  //데이터를 저장하는 저장소

  Future<String?> getValue(String key) async {
    return await storage.read(key: key);
  }

  //저장된 데이터를 읽어오는 기능
  Future<void> setValue(String key, String? value) async {
    return await storage.write(key: key, value: value);
  }
  //저장할 데이터를 셋팅하는 기능
}
