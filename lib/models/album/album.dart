class Album {
  int albumId, id;
  String title, url, thumbnailUrl;

  Album(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Album.fromJson(dynamic json) {
    return Album(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"]);
  }
}
