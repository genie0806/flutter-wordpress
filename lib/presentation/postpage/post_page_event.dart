abstract class PostPageEvent {
  factory PostPageEvent.showSnackBar(String message) = Showsnackbar;
}

class Showsnackbar implements PostPageEvent {
  final String message;
  Showsnackbar(
    this.message,
  );
}
