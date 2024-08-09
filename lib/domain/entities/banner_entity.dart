class BannerEntity {
  final int id;
  final String? title;
  final String thumbnail;
  final String? url;

  BannerEntity({
    required this.id,
    this.title,
    required this.thumbnail,
    this.url,
  });
}
