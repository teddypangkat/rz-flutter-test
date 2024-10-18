import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rz_flutter_test/features/weather_info/data/model/current_weather_model.dart';

part 'forcast_weather_model.freezed.dart';
part 'forcast_weather_model.g.dart';

@freezed
class ForcastWeatherModel with _$ForcastWeatherModel {
  const factory ForcastWeatherModel({List<CurrentWeatherModel>? list}) =
      _CurrentWeatherModel;

  factory ForcastWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$ForcastWeatherModelFromJson(json);
}
