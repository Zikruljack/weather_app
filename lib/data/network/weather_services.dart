import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../model/today_forecast.dart';

class WeatherServices {
  void fetchHumidity() async {
    try {
      http.Response res = await http.get(Uri.parse(''));
    } catch (e) {
      const SnackBar(
        content: Text('Error'),
      );
    }
  }
}
