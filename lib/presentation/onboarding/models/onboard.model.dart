/// class Onboard
class Onboard {
  /// model onBoard
  Onboard({
    required this.title,
    required this.message,
    required this.image,
    required this.isCloudAbove,
    this.backImage,
  });

  /// Property title text
  final String title;

  /// Property message text
  final String message;

  /// Property image url asset
  final String image;

  /// Property if is cloud above image
  final bool isCloudAbove;

  /// Property backimage that goes behind the image
  final String? backImage;
}
