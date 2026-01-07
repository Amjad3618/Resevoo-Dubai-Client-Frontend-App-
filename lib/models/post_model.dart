class PostModel {
  final String name;
  final String imageUrl;
  final int likes;
  final int comments;
  final String location;
  final List<String> postImages;
  final String description;
  final int timeAgo;

  PostModel({
    required this.name,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.location,
    required this.postImages,
    required this.description,
    required this.timeAgo,
  });

  // Static list of posts
  static List<PostModel> getPosts() {
    return [
      PostModel(
        name: "Andrew Mitchell",
        imageUrl: "assets/Images/Andrew.jpg",
        likes: 1243,
        comments: 87,
        location: "New York, USA",
        postImages: [
          "assets/Images/food1.jpg",
          "assets/Images/food2.jpg",
          "assets/Images/food3.jpg",
        ],
        description:
            "Amazing sunset view from the rooftop! 🌅 The city never looked so beautiful. Can't wait to come back here again.",
        timeAgo: 2,
      ),
      PostModel(
        name: "Amna Khan",
        imageUrl: "assets/Images/Amna.jpg",
        likes: 2156,
        comments: 143,
        location: "Karachi, Pakistan",
        postImages: ["assets/Images/food4.jpg", "assets/Images/food5.jpg"],
        description:
            "Coffee and good vibes ☕✨ Starting my day the right way! #MorningMotivation",
        timeAgo: 5,
      ),
      PostModel(
        name: "Charlie Davis",
        imageUrl: "assets/Images/charlie.jpg",
        likes: 3421,
        comments: 201,
        location: "London, UK",
        postImages: [
          "assets/Images/food6.jpg",
          "assets/Images/food2.jpg",
          "assets/Images/food1.jpg",
        ],
        description:
            "Exploring the streets of London 🇬🇧 History, culture, and amazing architecture everywhere you look!",
        timeAgo: 8,
      ),
      PostModel(
        name: "Emma Rodriguez",
        imageUrl: "assets/Images/emma.jpg",
        likes: 892,
        comments: 56,
        location: "Barcelona, Spain",
        postImages: ["assets/Images/food4.jpg"],
        description:
            "Beach days are the best days 🏖️🌊 Living my best life under the Mediterranean sun!",
        timeAgo: 12,
      ),
    ];
  }

  // Helper method to get time ago text
  String getTimeAgoText() {
    if (timeAgo < 1) {
      return "Just now";
    } else if (timeAgo == 1) {
      return "1 hour ago";
    } else if (timeAgo < 24) {
      return "$timeAgo hours ago";
    } else if (timeAgo < 48) {
      return "1 day ago";
    } else {
      return "${(timeAgo / 24).floor()} days ago";
    }
  }

  // Helper method to format likes count
  String getFormattedLikes() {
    if (likes >= 1000000) {
      return "${(likes / 1000000).toStringAsFixed(1)}M";
    } else if (likes >= 1000) {
      return "${(likes / 1000).toStringAsFixed(1)}K";
    } else {
      return likes.toString();
    }
  }

  // Helper method to format comments count
  String getFormattedComments() {
    if (comments >= 1000) {
      return "${(comments / 1000).toStringAsFixed(1)}K";
    } else {
      return comments.toString();
    }
  }
}
