import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';
import '../home_model.dart';

class TechnologyView extends GetView {
  final HomeScreenModel model = new HomeScreenModel(
      name: 'Technology', navKey: 1, icon: Icon(Icons.science_sharp));

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(model.navKey),
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => TechchnologyView1(model: model)),
    );
  }
}

class TechchnologyView1 extends StatelessWidget {
  final HomeScreenModel model;
  const TechchnologyView1({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.name)),
      body: InkWell(
        child: Text("TechchnologyView1"),
        onTap: () => Get.to(PageColorListV3(model: model), id: model.navKey),
      ),
    );
  }
}
