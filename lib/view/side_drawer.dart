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
      backgroundColor: Colors.lightBlue,
      child: ListView.separated(
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => openMenu(index),
              leading: menu[index].text.color(Colors.white).make(),
              trailing: Icon(
                Icons.add,
                color: Colors.white,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 15,
              endIndent: 15,
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
