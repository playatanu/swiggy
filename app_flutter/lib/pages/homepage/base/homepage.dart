// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/assets/colors.dart';
import 'package:swiggy/pages/homepage/controller/appbarcontroller.dart';
import 'package:swiggy/pages/homepage/widgets/filterchoies.dart';
import 'package:swiggy/pages/homepage/widgets/foodbanner.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  AppbarController appbarController = Get.put(AppbarController());
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            FoodBanner(queryData: queryData),

            ///Foodbanner [homepage/widgets/foodbanner.dart]
            const FilterChoies(),

            ///FilterChoies [homepage/widgets/filterchoies.dart]

            //// [RestaurantList()],

            ///RestaurantList [homepage/widgets/restaurantlist.dart]
            RestaurantItem(
              queryData: queryData,
            ),
            RestaurantItem(
              queryData: queryData,
            ),
            RestaurantItem(
              queryData: queryData,
            ),
            RestaurantItem(
              queryData: queryData,
            ),
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

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({
    Key? key,
    required this.queryData,
  }) : super(key: key);
  final MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                height: queryData.size.height / 7.5,
                width: queryData.size.height / 3.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_140,h_140,c_fill/rhxfjoksmhf3oqzwuay2'),
                  ),
                ),
                child: null
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Container(
                //         height: 25,
                //         width: 80,
                //         decoration: BoxDecoration(
                //             color: gray,
                //             borderRadius:
                //                 const BorderRadius.all(Radius.circular(3))),
                //         child: null //const Center(child: Text('50% OFF'))
                //         ),
                //   ],
                // ),
                ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Kolkatta Haji Biryani'),
                  Text('radha bazar, Ramsitapara'),
                  Text('Italian, Fast Food')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
