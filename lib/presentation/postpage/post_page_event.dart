import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_page_event.freezed.dart';

@freezed
abstract class PostPageEvent {
  const factory PostPageEvent.showSnackBar(String message) = Showsnackbar;
  const factory PostPageEvent.reloadPage() = ReloadPage;
}
