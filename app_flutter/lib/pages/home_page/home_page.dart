// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/controllers/location_controller.dart';
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
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ///Foodbanner [home_page/widgets/foodbanner.dart]
            const FoodBanner(),

            ///TodaysFeatured [home_page/widgets/todaysfeatured.dart]
            const TodaysFeatured(),

            ///FilterChoies [home_page/widgets/filterchoies.dart]
            const FilterChoies(),

            ///RestaurantList [home_page/widgets/restaurantlist.dart]
            RestaurantListView(),
            RestaurantListView(),
            RestaurantListView(),
          ],
        ),
        appBar: AppBar(
          //toolbarHeight: 70,
          backgroundColor: white,
          title: Obx(() => ListTile(
                // dense: true,
                // visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                contentPadding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, bottom: 8.0, top: 2.0),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      color: black,
                      icon: const Icon(Icons.location_on_outlined),
                      onPressed: () {
                        appbarController.fatchlocationdata();
                      },
                    ),
                    Text(
                      appbarController.area.value,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, bottom: 8.0, top: 0.0),
                  child: Text(
                    appbarController.address.value,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
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
      ),
    );
  }
}
