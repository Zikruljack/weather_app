import 'package:flutter/material.dart';
import 'package:weather_app/screen/widget/today_forecast/all_info_today_forecast.dart';
import 'package:weather_app/screen/widget/today_forecast/today_forecast.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('bg/bg.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: const Text('bandung'),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            body: SafeArea(
              maintainBottomViewPadding: true,
              child: Column(
                children: const [
                  TodayForecast(),
                  AllInfoTodayForecast(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
