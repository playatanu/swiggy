// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/controllers/locationcontroller.dart';
import 'package:swiggy/pages/home_page/widgets/filterchoies.dart';
import 'package:swiggy/pages/home_page/widgets/foodbanner.dart';
import 'package:swiggy/pages/home_page/widgets/restaurantlist.dart';
import 'package:swiggy/pages/home_page/widgets/todaysfeature.dart';
import 'package:swiggy/services/getuserlocation.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  LocationController appbarController = Get.put(LocationController());
  UserCurentLocation userCurentLocation = UserCurentLocation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ///Foodbanner [home_page/widgets/foodbanner.dart]
            const FoodBanner(),

            ///TodaysFeatured [home_page/widgets/todaysfeatured.dart]
            const TodaysFeatured(),

            ///FilterChoies [home_page/widgets/filterchoies.dart]
            const FilterChoies(),

            ///RestaurantList [home_page/widgets/restaurantlist.dart]
            RestaurantListView(),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          color: black,
          icon: const Icon(Icons.location_on_outlined),
          onPressed: () {
            appbarController.fatchlocationdata();
          },
        ),
        title: Obx(() => ListTile(
              title: Text(appbarController.area.value),
              subtitle: Text(appbarController.address.value),
            )),
        actions: const [
          IconButton(
            icon: Icon(
              Icons.star_outline_sharp,
              color: black,
            ),
            onPressed: null,
          ),
          Center(
            child: Text(
              'Offres',
              style: TextStyle(color: black),
            ),
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
