part of "weather_info_bloc.dart";

abstract class WeatherInfoState extends Equatable {
  const WeatherInfoState();

  @override
  List<Object?> get props => [];
}

class WeatherInfoInitial extends WeatherInfoState {}

class WeatherInfoLoadingState extends WeatherInfoState {}

class WeatherInfoLoadedState extends WeatherInfoState {
  const WeatherInfoLoadedState(
      {required this.timeDateNow,
      required this.timeMessage,
      required this.currentWeatherModel});

  final String timeDateNow;
  final String timeMessage;
  final CurrentWeatherModel currentWeatherModel;

  @override
  List<Object?> get props => [timeDateNow, timeMessage, currentWeatherModel];
}

class WeatherInfoLoadingFailedState extends WeatherInfoState {
  const WeatherInfoLoadingFailedState({required this.errorMessage});

  final String errorMessage;
}
