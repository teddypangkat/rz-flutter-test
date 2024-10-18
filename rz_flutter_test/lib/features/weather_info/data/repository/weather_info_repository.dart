import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rz_flutter_test/core/data/data_provider.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/current_weather_model.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/forcast_weather_model.dart';

class WeatherInfoRepository {
  Future<String> getTimeOfDay() {
    DateTime time = DateTime.now();
    String message = '';
    if (time.hour < 12) {
      message = 'Selamat Pagi';
    } else if (time.hour < 17) {
      message = 'Selamat Siang';
    } else if (time.hour < 21) {
      message = 'Selamat Sore';
    } else {
      message = 'Selamat Malam';
    }
    return Future.value(message);
  }

  Future<String> getCurrentDateFormat() {
    DateTime dateTime = DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d, yyyy').format(dateTime);
    return Future.value(formattedDate);
  }

  Future<ForcastWeatherModel> getForcastWeather(
      double? lat, double? longi) async {
    try {
      final response = await DataProvider.getRequest(
          endPoint:
              'https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$longi&appid=6dc2c41f0d30ba81b1da7c1650b54e8f');

      if (response.statusCode == 200) {
        final forcastWeather =
            ForcastWeatherModel.fromJson(json.decode(response.body));

        return forcastWeather;
      } else {
        throw 'Error loading data';
      }
    } catch (e) {
      debugPrint('ERROR ${e.toString()}');
      rethrow;
    }
  }

  Future<CurrentWeatherModel> getCurrentWeather(
      double? lat, double? longi) async {
    try {
      final response = await DataProvider.getRequest(
          endPoint:
              'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$longi&appid=6dc2c41f0d30ba81b1da7c1650b54e8f');

      if (response.statusCode == 200) {
        final currentWeather =
            CurrentWeatherModel.fromJson(json.decode(response.body));

        return currentWeather;
      } else {
        throw 'Error loading data';
      }
    } catch (e) {
      debugPrint('ERROR ${e.toString()}');
      rethrow;
    }
  }
}
