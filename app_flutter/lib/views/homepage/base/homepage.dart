// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/assets/colors.dart';
import 'package:swiggy/views/homepage/controller/appbarcontroller.dart';
import 'package:swiggy/views/homepage/widgets/filterchoies.dart';
import 'package:swiggy/views/homepage/widgets/foodbanner.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  AppbarController appbarController = Get.put(AppbarController());
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
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
            FoodBanner(queryData: queryData),

            ///Food banner [homepage/widgets/foodbanner.dart]
            const FilterChoies(),

            ///FilterChoies [homepage/widgets/filterchoies.dart]
          ],
        ),
      ),
    );
  }
}
