import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:swiggy/models/restudent_model.dart';
import 'package:swiggy/api/get_restaurant_data.dart';



///[Restudent List controller]
class ResListController extends GetxController {
  var reslist = <RestudentModel>[].obs;

  @override
  onInit() {
    fetchData();
    super.onInit();
  }

  //Get RestudentList from RestaurantData
  fetchData() async {
    var reslists = await getrestaurantlist();
    reslist.assignAll(reslists);
  }
}
