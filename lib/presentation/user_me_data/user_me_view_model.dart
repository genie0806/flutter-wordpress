import 'package:flutter/cupertino.dart';

import 'package:virtue_test/domain/use_case/user_me_use_case/get_user_me_use_case.dart';

class UserMeViewModel with ChangeNotifier {
  final GetUserMeUseCase useCases;
  UserMeViewModel(
    this.useCases,
  );

  Future<void> fetchUseMe() async {}
}
