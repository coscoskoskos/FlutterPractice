import 'dart:convert';

import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyCDwtBfwfN9rp_i8O2eSrMP9tcsNaHhC6o';

class LocationHelper {
  static String generateLocationPreviewImage({double latitude, double longitude,}) {
    return 'https://www.google.com/maps/view/v1/place?key=$GOOGLE_API_KEY&center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude"';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY';
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}