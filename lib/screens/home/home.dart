import 'package:api_practice/controllers/home/home_controller.dart';
import 'package:api_practice/widgets/home/AlbumList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
          body: controller.albumList.isNotEmpty
              ? const AlbumList()
              : const Center(
                  child: CircularProgressIndicator(),
                ));
    });
  }
}
