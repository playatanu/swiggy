// ignore: import_of_legacy_library_into_null_safe
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:swiggy/services/getuserlocation.dart';

UserCurentLocation userCurentLocation = UserCurentLocation();

///[Home_Page Appbar controller]
class LocationController extends GetxController {
  ///This Show the User curent Location
  late Position position;

  var area = 'Swiggy'.obs;
  var address = 'Swiggya'.obs;

  @override
  onInit() {
    fatchlocationdata();
    super.onInit();
  }

  fatchlocationdata() async {
    position = await userCurentLocation.userCurrentPosition();
    final coordinates = Coordinates(position.latitude, position.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);

    var first = addresses.first;
    // ignore: avoid_print

    address.value = first.addressLine;
    area.value = first.featureName;
  }
}
