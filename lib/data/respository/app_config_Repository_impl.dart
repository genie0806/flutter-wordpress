import 'package:virtue_test/data/data_source/local/secure_data_source.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';

class AppConfigRepositoryImpl implements AppConfigRepository {
  final SecureDataSource _dataSource;

  AppConfigRepositoryImpl(
    this._dataSource,
  );

  @override
  Future<String?> getToken() {
    return _dataSource.getValue('token');
  }
  //필요하면 token을 꺼내서 전달한다.

  @override
  Future<bool> isAutoLogin() async {
    return await _dataSource.getValue('isAutoLogin') == 'true' ? true : false;
  }
  //setValue에서 넘어온 isAutoLogin 값이  'true'면 true이고 다르면 false이다.

  @override
  void setAutoLogin(bool isAutoLogin) {
    _dataSource.setValue('isAutoLogin', 'true');
  }
  //Secure Storage의 value는 String 밖에 받지 못한다. String true로 해보자.

  @override
  void setToken(String? token) {
    _dataSource.setValue('token', token);
  }
  //key값으로 token으로 해준다.

  @override
  Future<String?> getUsername() {
    return _dataSource.getValue('username');
  }

  @override
  Future<String?> getPassword() {
    return _dataSource.getValue('password');
  }

  @override
  void setUsername(String username) {
    _dataSource.setValue('username', username);
  }

  @override
  void setPassword(String password) {
    _dataSource.setValue('password', password);
  }
}
