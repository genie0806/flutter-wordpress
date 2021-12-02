import 'package:flutter/cupertino.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';

class PostPageViewModel with ChangeNotifier {
  final PostUseCases _useCases;

  PostPageViewModel(this._useCases);
}
