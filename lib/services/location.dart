import 'package:geolocator/geolocator.dart';

class Location {
  // Properties
  double latitude;
  double longitude;

  // Class methods
  Future<void> getCurrentLocation() async {
    // Here we can wait for the current location to be loaded before we return it
    // That's why we use async and wait
    try {
      // Get the current location
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      // Assign the latitude and longitude
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
