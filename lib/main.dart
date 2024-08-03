import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/cubit/get_weather_state.dart';
import 'package:weather_app/view/home_view.dart';
import 'package:weather_app/widget/matrerial_color.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
          builder: (context) {
            return BlocBuilder<GetWeatherCubit, WeatherState>(
              builder: (context, state) {
                return MaterialApp(
                  theme: ThemeData(
                    primarySwatch: getThemeColor(
                        BlocProvider
                            .of<GetWeatherCubit>(context)
                            .weatherModel
                            ?.condition
                    ),),
                  debugShowCheckedModeBanner: false,
                  title: "weather App",
                  home: const HomeView(),
                );
              },
            );
          }
      ),
    );
  }


}
