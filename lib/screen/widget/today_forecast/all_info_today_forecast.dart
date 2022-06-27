import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllInfoTodayForecast extends StatefulWidget {
  const AllInfoTodayForecast({Key? key}) : super(key: key);

  @override
  State<AllInfoTodayForecast> createState() => _AllInfoTodayForecastState();
}

class _AllInfoTodayForecastState extends State<AllInfoTodayForecast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          humidity(),
          pressure(),
          cloudiness(),
          wind(),
        ],
      ),
    );
  }

  Column humidity() {
    const humidityData = 92;
    return Column(
      children: [
        Image.asset(
          'icon/humidity.png',
          scale: MediaQuery.of(context).size.aspectRatio * 10,
        ),
        const Text('$humidityData %'),
        Text(
          'Humidity',
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }

  Column pressure() {
    const humidityData = 92;
    return Column(
      children: [
        Image.asset(
          'icon/wind.png',
          scale: MediaQuery.of(context).size.aspectRatio * 10,
        ),
        const Text('$humidityData hpa'),
        Text(
          'Pressure',
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }

  Column cloudiness() {
    const humidityData = 92;
    return Column(
      children: [
        Image.asset(
          'icon/cloud.png',
          scale: MediaQuery.of(context).size.aspectRatio * 10,
        ),
        const Text('$humidityData %'),
        Text(
          'Cloudiness',
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }

  Column wind() {
    const humidityData = 92;
    return Column(
      children: [
        Image.asset(
          'icon/humidity.png',
          scale: MediaQuery.of(context).size.aspectRatio * 10,
        ),
        const Text('$humidityData m/s'),
        Text(
          'cloudiness',
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }
}
