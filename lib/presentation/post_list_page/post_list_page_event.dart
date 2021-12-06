abstract class PostListPageEvent {
  factory PostListPageEvent.showSnackBar(String message) = Showsnackbar;
}

class Showsnackbar implements PostListPageEvent {
  final String message;
  Showsnackbar(
    this.message,
  );
}
