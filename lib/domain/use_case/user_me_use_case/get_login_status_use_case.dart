import 'package:virtue_test/domain/repository/app_config_repository.dart';

class GetLoginStatusUseCase {
  final AppConfigRepository _appConfigRepository;

  GetLoginStatusUseCase(
    this._appConfigRepository,
  );

  Future<bool> call() async {
    return _appConfigRepository.isAutoLogin();
  }
}
