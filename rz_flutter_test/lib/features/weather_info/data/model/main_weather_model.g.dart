// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainWeatherModelImpl _$$MainWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainWeatherModelImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toInt(),
      pressure: (json['pressure'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MainWeatherModelImplToJson(
        _$MainWeatherModelImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
    };
