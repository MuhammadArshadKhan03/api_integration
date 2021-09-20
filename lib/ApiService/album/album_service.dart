import 'package:api_practice/ApiRepository/api_repository.dart';
import 'package:api_practice/models/album/album.dart';

class AlbumService {
  String url = "https://jsonplaceholder.typicode.com/photos";

  void getAlbum(
      {Function()? beforeSend,
      Function(List<Album> albumList)? onSuccess,
      Function(dynamic error)? onError}) {
    ApiRepository(url: url).get(beforeSend: () {
      if (beforeSend != null) beforeSend();
    }, onSuccess: (data) {
      if (onSuccess != null) {
        onSuccess((data as List).map((e) => Album.fromJson(e)).toList());
      }
    }, onError: (error) {
      if (onError != null) {
        onError(error);
      }
    });
  }
}
