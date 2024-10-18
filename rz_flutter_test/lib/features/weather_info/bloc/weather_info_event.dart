part of "weather_info_bloc.dart";

abstract class WeatherInfoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetWeatherInfoEvent extends WeatherInfoEvent {
  final double lat;
  final double lng;

  GetWeatherInfoEvent(this.lat, this.lng);
}
