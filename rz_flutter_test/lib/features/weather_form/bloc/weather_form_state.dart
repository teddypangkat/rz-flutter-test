part of "weather_form_bloc.dart";

abstract class WeatherFormState extends Equatable {
  const WeatherFormState();

  @override
  List<Object?> get props => [];
}

class WeatherFormInitial extends WeatherFormState {}

class WeatherFormLoadingState extends WeatherFormState {}

class WeatherFormLoadedState extends WeatherFormState {
  const WeatherFormLoadedState(
      {required this.provinces, required this.regencies});

  final List<ProvinceModel> provinces;
  final List<RegenciesModel> regencies;

  @override
  List<Object?> get props => [provinces, regencies];
}

class WeatherFormLoadingFailedState extends WeatherFormState {
  const WeatherFormLoadingFailedState({required this.errorMessage});

  final String errorMessage;
}
