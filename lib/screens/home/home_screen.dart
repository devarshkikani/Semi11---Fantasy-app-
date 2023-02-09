import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semi11/constant/default_images.dart';
import 'package:semi11/constant/sizedbox.dart';
import 'package:semi11/screens/home/home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(hamburgerMenu),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_sharp,
            ),
          ),
          const CircleAvatar(
            maxRadius: 18,
            backgroundImage: AssetImage(authBackground),
          ),
          width10,
        ],
      ),
      body: SizedBox(),
    );
  }
}
