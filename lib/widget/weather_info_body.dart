import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/model/weather_model.dart';

import 'matrerial_color.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key, required this.weather}) : super(key: key);
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          transform: const GradientRotation(21),
          colors: [
            getThemeColor(weatherModel.condition),
            getThemeColor(weatherModel.condition)[300]!,
            getThemeColor(weatherModel.condition)[50]!,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(
              "updated at:${weatherModel.date.hour}:${weatherModel.date.minute}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weatherModel.image}"),
                Text(
                  weatherModel.temp.round().toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Column(
                  children: [
                    Text("MaxTemp:${weatherModel.maxTemp.round().toString()}"),
                    Text("MinTemp:${weatherModel.minTemp.round().toString()}"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel.condition,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            )
          ],
        ),
      ),
    );
  }
}
