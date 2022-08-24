import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/modules/homeadmin/views/homeadmin_view.dart';
import 'package:manuapp/app/modules/order_admin/views/order_admin_view.dart';
import 'package:manuapp/app/modules/promosiadmin/views/promosiadmin_view.dart';
import 'package:manuapp/app/modules/saran_admin/views/saran_admin_view.dart';

import '../controllers/adminbotnav_controller.dart';

class AdminbotnavView extends GetView<AdminbotnavController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminbotnavController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                OrderAdminView(),
                HomeadminView(),
                PromosiadminView(),
                SaranAdminView()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _adminbottomNavigationBarItem(
                icon: CupertinoIcons.cart,
                label: 'Order',
              ),
              _adminbottomNavigationBarItem(
                icon: CupertinoIcons.add_circled,
                label: 'Product',
              ),
              _adminbottomNavigationBarItem(
                icon: CupertinoIcons.tag,
                label: 'Promosi',
              ),
              _adminbottomNavigationBarItem(
                icon: CupertinoIcons.star,
                label: 'Rating',
              ),
              _adminbottomNavigationBarItem(
                icon: CupertinoIcons.doc_plaintext,
                label: 'Report',
              ),
            ],
          ),
        );
      },
    );
  }

  _adminbottomNavigationBarItem(
      {required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
