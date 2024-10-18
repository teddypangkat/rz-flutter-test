import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/cloudness_model.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/main_weather_model.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/weather_model.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/wind_model.dart';

part 'current_weather_model.freezed.dart';
part 'current_weather_model.g.dart';

@freezed
class CurrentWeatherModel with _$CurrentWeatherModel {
  const factory CurrentWeatherModel(
      {List<WeatherModel>? weather,
      MainWeatherModel? main,
      CloudnessModel? cloud,
      WindModel? wind}) = _CurrentWeatherModel;

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);
}
