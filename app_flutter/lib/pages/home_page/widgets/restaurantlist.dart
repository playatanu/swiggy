import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/controllers/restaurantlistcontroller.dart';

// ignore: must_be_immutable
class RestaurantListView extends StatelessWidget {
  RestaurantListView({Key? key}) : super(key: key);

  ResListController resListController = Get.put(ResListController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() => ListView.builder(
            itemCount: resListController.reslist.length,
            itemBuilder: (context, index) {
              return Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 7.5,
                        width: MediaQuery.of(context).size.height / 7.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                resListController.reslist[index].resimage,
                                scale: 1.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: 25,
                                width: 80,
                                decoration: const BoxDecoration(
                                    color: gray,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                child: const Center(child: Text('50% OFF'))),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(resListController.reslist[index].resname),
                            Text(resListController.reslist[index].address),
                            Text(resListController.reslist[index].type),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )

                  //Text(resListController.reslist[index].resname);

                  // By default, show a loading spinner.
                  );
            },
          )),
    );
  }
}
