import 'package:api_practice/controllers/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumList extends StatelessWidget {
  const AlbumList({Key? key}) : super(key: key);

  Widget itemBuilder(HomeController controller, int index) {
    return ListTile(
      title: Text(
        controller.albumList[index].title,
      ),
      leading: Container(
        width: 50,
        height: 50,
        child: Image.network(controller.albumList[index].thumbnailUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return ListView.builder(
          itemCount: controller.albumList.length,
          itemBuilder: (context, index) {
            return itemBuilder(controller, index);
          });
    });
  }
}
