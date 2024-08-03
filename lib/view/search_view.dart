import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search a City"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onSubmitted: (value) async {
           var getWeatherCubit=   BlocProvider.of<GetWeatherCubit>(context);
           getWeatherCubit.getWeather(cityName: value);
           Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.search),
              ),
              labelText: "Search",
              labelStyle: const TextStyle(color: Colors.black, fontSize: 24),
              hintText: "Enter City Name",
              // hintStyle: const TextStyle(fontSize: 18),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                // borderSide: const BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                // borderSide: const BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
