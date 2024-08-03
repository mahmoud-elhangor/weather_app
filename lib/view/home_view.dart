import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/cubit/get_weather_state.dart';
import 'package:weather_app/widget/no_weather_body.dart';
import 'package:weather_app/widget/weather_info_body.dart';

import '../widget/search_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Weather App"),
         // backgroundColor:  getThemeColor(weatherModel.condition),
          elevation: 0,
          centerTitle: true,
          actions: const [
            SearchIcon(),
          ],
        ),
        body: BlocBuilder<GetWeatherCubit,WeatherState>(
          builder: (context, state) {
           if(state is WeatherInitialState){
             return const NoWeatherBody();
           }else if (state is WeatherLoadedState){
             return    WeatherInfoBody(weather: state.weatherModel,);
           }else{
             return const Text("oops there was an error");
           }
            // return const NoWeatherBody();
          },
        ));
  }
}
