import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/modules/cart/views/cart_view.dart';
import 'package:manuapp/app/modules/home/views/home_view.dart';
import 'package:manuapp/app/modules/order/views/order_view.dart';
import 'package:manuapp/app/modules/profil/views/profil_view.dart';
import 'package:manuapp/app/modules/voucher/views/voucher_view.dart';

import '../controllers/bottomnavbar_controller.dart';

class BottomnavbarView extends GetView<BottomnavbarController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomnavbarController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                VoucherView(),
                CartView(),
                OrderView(),
                ProfilView()
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
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.tag,
                label: 'Voucher',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.cart,
                label: 'Cart',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.doc_plaintext,
                label: 'Order',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
