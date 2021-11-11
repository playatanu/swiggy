import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/controllers/restaurant_list_controller.dart';

// ignore: must_be_immutable
class RestaurantPage extends StatelessWidget {
  RestaurantPage({Key? key, required this.resindex}) : super(key: key);

  final int resindex;

  ResListController resListController = Get.put(ResListController());
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    // var food = resListController.reslist[index].foods[1].fname;
    // ignore: avoid_print
    // print(resListController.reslist[index].foods[1].fname);
    return Scaffold(
      body: ListView.separated(
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: resListController.reslist[resindex].foods.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(resListController
                          .reslist[resindex].foods[index].fname),
                      Text(
                          "₹ ${resListController.reslist[resindex].foods[index].fprice.toString()}"),
                    ],
                  ),
                  Image.network(
                    resListController.reslist[resindex].foods[index].fimage,
                    width: 100,
                    height: 100,
                  ),
                ]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
      appBar: AppBar(
        title: Text(resListController.reslist[resindex].resname),
        backgroundColor: white,
        iconTheme: const IconThemeData(color: black),
        titleTextStyle: const TextStyle(color: black),
      ),
    );
  }
}
