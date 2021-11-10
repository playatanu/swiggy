import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/controllers/restaurant_list_controller.dart';

// ignore: must_be_immutable
class RestaurantListView extends StatelessWidget {
  RestaurantListView({Key? key}) : super(key: key);

  ResListController resListController = Get.put(ResListController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Obx(() => ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: resListController.reslist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  resListController.reslist[index].resimage,
                                  scale: 1.0),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                  ),
                                  color: gray,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(child: Text('50% OFF'))),
                        ),
                      ],
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
              );
            },
          )),
    );
  }
}
