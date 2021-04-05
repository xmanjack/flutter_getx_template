import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

import '../controllers/public_controller.dart';

class PublicView extends GetView<PublicController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PublicView'),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                Get.to(HomeView(), duration: Duration(milliseconds: 0));
              },
              child: Text("Go to Home to View"))),
    );
  }
}
