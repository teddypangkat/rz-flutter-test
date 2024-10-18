part of "weather_info_bloc.dart";

abstract class WeatherInfoState {
  const WeatherInfoState();

  @override
  List<Object?> get props => [];
}

class WeatherInfoInitial extends WeatherInfoState {}

class WeatherInfoLoadingState extends WeatherInfoState {}

class WeatherInfoLoadedState extends WeatherInfoState {
  const WeatherInfoLoadedState(
      {required this.timeDateNow, required this.timeMessage});

  final String timeDateNow;
  final String timeMessage;

  @override
  List<Object?> get props => [timeDateNow, timeMessage];
}

class WeatherInfoLoadingFailedState extends WeatherInfoState {
  const WeatherInfoLoadingFailedState({required this.errorMessage});

  final String errorMessage;
}
