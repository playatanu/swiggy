// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/assets/colors.dart';
import 'package:swiggy/views/homepage/controller/appbarcontroller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  AppbarController appbarController = Get.put(AppbarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(
          Icons.location_on_outlined,
          color: black,
        ),
        title: Obx(() => ListTile(
              title: Text(appbarController.area.value),
              subtitle: Text(appbarController.address.value),
            )),
        actions: [
          Icon(
            Icons.star_outline_sharp,
            color: black,
          ),
          Center(
            child: Text(
              'Offres',
              style: TextStyle(color: black),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Food is Goods'),
                      Text('Enjoy your fev foods'),
                      Text('View All')
                    ],
                  ),
                  Image(
                    image: NetworkImage(''),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
