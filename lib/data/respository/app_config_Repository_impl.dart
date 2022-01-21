import 'package:virtue_test/data/data_source/local/secure_data_source.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';

class AppConfigRepositoryImpl implements AppConfigRepository {
  final SecureDataSource dataSource;

  AppConfigRepositoryImpl(
    this.dataSource,
  );

  @override
  Future<String?> getToken() {
    return dataSource.getValue('token');
  }
  //필요하면 token을 꺼내서 전달한다.

  @override
  Future<bool> isAutoLogin() async {
    return await dataSource.getValue('isAutoLogin') == 'true' ? true : false;
  }
  //setValue에서 넘어온 isAutoLogin 값이  'true'면 true이고 다르면 false이다.

  @override
  void setAutoLogin(bool isAutoLogin) {
    dataSource.setValue('isAutoLogin', 'true');
  }
  //Secure Storage의 value는 String 밖에 받지 못한다. String true로 해보자.

  @override
  void setToken(String? token) {
    dataSource.setValue('token', token);
  }
  //key값으로 token으로 해준다.

  @override
  Future<String?> getUsername() {
    return dataSource.getValue('username');
  }

  @override
  Future<String?> getPassword() {
    return dataSource.getValue('password');
  }

  @override
  void setUsername(String username) {
    dataSource.setValue('username', username);
  }

  @override
  void setPassword(String password) {
    dataSource.setValue('password', password);
  }
}
