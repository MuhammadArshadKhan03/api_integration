import 'package:api_practice/ApiService/album/album_service.dart';
import 'package:api_practice/models/album/album.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String title = "Hello from title";
  List<Album> albumList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAlbums();
  }

  getAlbums() {
    AlbumService().getAlbum(beforeSend: () {
      print("i am executing you api");
    }, onSuccess: (data) {
      albumList = data;
      update();
    }, onError: (error) {
      print(error);
    });
  }
}
