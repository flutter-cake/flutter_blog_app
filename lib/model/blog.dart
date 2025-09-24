class Blog {
  final String titleB;
  final String dateB;
  final String linkB;
  final String authorB;
  final String thumbnailB;
  final String descriptionB;
  final String contentB;

  const Blog({
    required this.titleB,
    required this.dateB,
    required this.linkB,
    required this.authorB,
    required this.thumbnailB,
    required this.descriptionB,
    required this.contentB,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      titleB: json["title"] ?? '',
      dateB: json["pubDate"] ?? '',
      linkB: json["link"] ?? '',
      authorB: json["author"] ?? '',
      thumbnailB: json["thumbnail"] ?? '',
      descriptionB: json["description"] ?? '',
      contentB: json["content"] ?? '',
    );
  }
}
