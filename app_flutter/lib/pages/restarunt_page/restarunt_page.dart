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
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                resListController
                                    .reslist[resindex].foods[index].fimage,
                                scale: 1.0),
                          ),
                        ),
                      ),

                      // ignore: unnecessary_null_comparison
                      Positioned(
                        bottom: -10,
                        child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 5.0,
                                  ),
                                ],
                                // border: Border.all(
                                //   color: Colors.grey.shade400,
                                // ),
                                color: gray,
                                borderRadius: BorderRadius.circular(8)),
                            child: (1 == 1)
                                ? (Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: const Text(
                                      'ADD',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ))
                                : Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.remove)),
                                      const Text('0'),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add))
                                    ],
                                  )),
                      ),
                    ],
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
