import 'package:bookshop/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menu = ['Add Auther', 'Add Publisher', 'Add WareHouse'];

    return Drawer(
      child: ListView.separated(
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => openMenu(index),
              leading: const Icon(
                Icons.add,
                color: Colors.deepPurple,
              ),
              title: menu[index].text.color(Colors.deepPurple).make(),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.deepPurple,
              thickness: 2,
            );
          },
          itemCount: menu.length),
    );
  }

  openMenu(int index) {
    Get.back();
    switch (index) {
      case 0:
        Get.toNamed(AddAutherRoute);
        break;
      case 1:
        Get.toNamed(AddPublisherRoute);
        break;
      case 2:
        Get.toNamed(AddWareHouseRoute);
        break;
      default:
    }
  }
}
