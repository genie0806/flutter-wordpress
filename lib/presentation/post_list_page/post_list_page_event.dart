import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_page_event.freezed.dart';

@freezed
abstract class PostListPageEvent with _$PostListPageEvent {
  const factory PostListPageEvent.showSnackBar(String message) = Showsnackbar;
  const factory PostListPageEvent.reloadPage() = ReloadPage;
}
