import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_weather_model.freezed.dart';
part 'main_weather_model.g.dart';

@freezed
class MainWeatherModel with _$MainWeatherModel {
  const factory MainWeatherModel({double? temp, int? humidity, int? pressure}) =
      _MainWeatherModel;

  factory MainWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherModelFromJson(json);
}
