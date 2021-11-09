import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:swiggy/models/restudentmodel.dart';
import 'package:swiggy/api/getrestaurantdata.dart';

RestaurantData restaurantList = RestaurantData();

class ResListController extends GetxController {
  var reslist = <RestudentModel>[].obs;

  @override
  onInit() {
    fatchres();
    super.onInit();
  }

  fatchres() async {
    var reslists = await restaurantList.getrestaurantlist();
    reslist.assignAll(reslists);
  }
}
