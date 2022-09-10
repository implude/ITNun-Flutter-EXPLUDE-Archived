class NewsData {
  final String title;
  final String content;
  final String subtitle;

  final String reporter;
  final String email;
  final String siteName;

  final DateTime registeredAt;
  final DateTime? editedAt;

  final String url;

  const NewsData({
    required this.title,
    required this.content,
    required this.reporter,
    required this.email,
    required this.registeredAt,
    required this.siteName,
    this.editedAt,
    required this.subtitle,
    required this.url,
  });
}
