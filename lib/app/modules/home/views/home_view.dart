import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/home/views/setting_view.dart';
import 'package:flutter_getx_template/app/modules/home/views/technology_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return
//     Scaffold(
//       appBar: AppBar(
//         title: Text('HomeView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'HomeView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [TechnologyView(), SettingView()],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.science_sharp,
                label: 'Technology',
              ),
              _bottomNavigationBarItem(
                icon: Icons.settings_applications_sharp,
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
