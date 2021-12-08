import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_page_event.freezed.dart';

@freezed
abstract class PostListPageEvent {
  factory PostListPageEvent.showSnackBar(String message) = Showsnackbar;
  factory PostListPageEvent.reloadPage() = ReloadPage;
}
