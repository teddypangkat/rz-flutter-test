part of "weather_info_bloc.dart";

abstract class WeatherInfoEvent extends Equatable {
  const WeatherInfoEvent();

  @override
  List<Object?> get props => [];
}

class GetWeatherInfoEvent extends WeatherInfoEvent {}
