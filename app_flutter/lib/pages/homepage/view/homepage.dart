// ignore_for_file: must_be_immutable
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/assets/colors.dart';
import 'package:swiggy/controllers/restaurantlistcontroller.dart';
import 'package:swiggy/controllers/appbarcontroller.dart';
import 'package:swiggy/pages/homepage/widgets/filterchoies.dart';
import 'package:swiggy/pages/homepage/widgets/foodbanner.dart';
import 'package:swiggy/pages/homepage/widgets/restaurantlist.dart';
import 'package:swiggy/pages/homepage/widgets/todaysfeature.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  AppbarController appbarController = Get.put(AppbarController());
  ResListController resListController = Get.put(ResListController());

  @override
  Widget build(BuildContext context) {
    resListController.fatchres();
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ///Foodbanner [homepage/widgets/foodbanner.dart]
            FoodBanner(queryData: queryData),

            ///FilterChoies [homepage/widgets/filterchoies.dart]
            const FilterChoies(),

            ///TodaysFeatured [homepage/widgets/todaysfeatured.dart]
            const TodaysFeatured(),

            ///RestaurantList [homepage/widgets/restaurantlist.dart]
            RestaurantListView(
                resListController: resListController, queryData: queryData),
          ],
        ),
      ),
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
    );
  }
}
