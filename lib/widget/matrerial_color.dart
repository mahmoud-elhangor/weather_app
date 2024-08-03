import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if(condition==null){
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
    case 'Patchy sleet possible':
    case 'Freezing fog':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
      return Colors.blueGrey;
    case 'Cloudy':
    case 'Overcast':
    case 'Patchy snow possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Fog':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.grey;
    case 'Thundery outbreaks possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Patchy freezing drizzle possible':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Mist':
    case 'Heavy rain at times':
    case 'Patchy rain possible':
    case 'Heavy rain':
    case 'Torrential rain shower':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.blue;
    default:
      return Colors.blue;
  }
}