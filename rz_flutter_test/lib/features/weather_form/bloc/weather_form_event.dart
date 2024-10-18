part of 'weather_form_bloc.dart';

abstract class WeatherFormEvent extends Equatable {
  const WeatherFormEvent();

  @override
  List<Object?> get props => [];
}

class GetWeatherFormEvent extends WeatherFormEvent {}
