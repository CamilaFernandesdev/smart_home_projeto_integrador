class Post {
  final String status;

  Post({required this.status});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      status: json['status'],
    );
  }
}
