import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TechnologyView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TechnologyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TechnologyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
