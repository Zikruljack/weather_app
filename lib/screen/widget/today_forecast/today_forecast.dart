import 'package:flutter/material.dart';

class TodayForecast extends StatefulWidget {
  const TodayForecast({Key? key}) : super(key: key);

  @override
  State<TodayForecast> createState() => _TodayForecastState();
}

//STREAM BUILDER FOR RENDERING ICON AND STATUS WEATHERE
class _TodayForecastState extends State<TodayForecast> {
  final name = 'zikrullah';
  final weatherDesc = 'Clouds';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Selamat Datang, $name'),
                Text(weatherDesc),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('28.33 \u2103 C'),
              Image.network(
                  'https://openweathermap.org/img/wn/02d@2x.png') // create methode
            ],
          ),
        ],
      ),
    );
  }
}
