// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherModelImpl _$$CurrentWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherModelImpl(
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: json['main'] == null
          ? null
          : MainWeatherModel.fromJson(json['main'] as Map<String, dynamic>),
      cloud: json['cloud'] == null
          ? null
          : CloudnessModel.fromJson(json['cloud'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : WindModel.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherModelImplToJson(
        _$CurrentWeatherModelImpl instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'cloud': instance.cloud,
      'wind': instance.wind,
    };
