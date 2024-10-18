import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_flutter_test/core/helper/exeception_handler.dart';
import 'package:rz_flutter_test/features/weather_info/data/repository/weather_info_repository.dart';

part 'weather_info_event.dart';
part 'weather_info_state.dart';

class WeatherInfoBloc extends Bloc<WeatherInfoEvent, WeatherInfoState> {
  final WeatherInfoRepository weatherInfoRepository;

  WeatherInfoBloc({required this.weatherInfoRepository})
      : super(WeatherInfoInitial()) {
    on<WeatherInfoEvent>(
        (WeatherInfoEvent event, Emitter<WeatherInfoState> emit) async {
      emit(WeatherInfoLoadingState());

      try {
        final timeMessage = await weatherInfoRepository.getTimeOfDay();
        final currentDateTime =
            await weatherInfoRepository.getCurrentDateFormat();

        emit(WeatherInfoLoadedState(
            timeDateNow: currentDateTime, timeMessage: timeMessage));
      } catch (e) {
        final message = handleExceptionWithMessage(e);
        emit(WeatherInfoLoadingFailedState(errorMessage: message));
      }
    });
  }
}
