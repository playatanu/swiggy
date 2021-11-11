import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/controllers/restaurant_list_controller.dart';
import 'package:swiggy/pages/restarunt_page/restarunt_page.dart';

// ignore: must_be_immutable
class RestaurantListView extends StatelessWidget {
  RestaurantListView({Key? key}) : super(key: key);

  ResListController resListController = Get.put(ResListController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: resListController.reslist.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(RestaurantPage(
                    resindex: index,
                  ));

                  ///[On Tap Restaurant Item navigate to resturant page with curent index]
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, right: 20, bottom: 20),
                  child: (Row(
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

                          // ignore: unnecessary_null_comparison
                          (resListController.reslist[index].resoffer < 30)
                              ? const SizedBox()
                              : Positioned(
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
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Center(
                                          child: Text(
                                              '${resListController.reslist[index].resoffer}% OFF '))),
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
                              Text(
                                resListController.reslist[index].resname,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                resListController.reslist[index].type,
                                style: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                resListController.reslist[index].address,
                                style: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                ),
                              ),
                              Column(
                                children: [
                                  const Divider(),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_border,
                                        size: 15,
                                        color: Colors.black38,
                                      ),
                                      const SizedBox(width: 2),
                                      Text(
                                        resListController
                                            .reslist[index].resreatting
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.black38,
                                          fontSize: 14,
                                        ),
                                      ),
                                      (resListController
                                                  .reslist[index].resoffer <
                                              30)
                                          ? const SizedBox()
                                          : Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.0, right: 10),
                                                  child: Icon(
                                                    Icons.circle,
                                                    size: 3,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.circle,
                                                  size: 15,
                                                  color: Colors.black38,
                                                ),
                                                const SizedBox(width: 2),
                                                Text(
                                                  'upto ${resListController.reslist[index].resoffer.toString()}% off',
                                                  style: const TextStyle(
                                                    color: Colors.black38,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          )),
    );
  }
}
