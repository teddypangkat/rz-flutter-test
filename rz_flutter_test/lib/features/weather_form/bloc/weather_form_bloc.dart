import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_flutter_test/core/helper/exeception_handler.dart';
import 'package:rz_flutter_test/features/weather_form/data/model/province_model.dart';
import 'package:rz_flutter_test/features/weather_form/data/model/regencies_model.dart';
import 'package:rz_flutter_test/features/weather_form/data/repository/weather_form_repository.dart';

import 'package:equatable/equatable.dart';

part 'weather_form_state.dart';
part 'weather_form_event.dart';

class WeatherFormBloc extends Bloc<WeatherFormEvent, WeatherFormState> {
  final WeatherFormRepository repository;

  WeatherFormBloc({required this.repository}) : super(WeatherFormInitial()) {
    on<WeatherFormEvent>(
        (WeatherFormEvent event, Emitter<WeatherFormState> emit) async {
      emit(WeatherFormLoadingState());
      try {
        final provinces = await repository.getListProvince();
        final regencies = await repository.getListRegency();

        emit(
            WeatherFormLoadedState(provinces: provinces, regencies: regencies));
      } catch (e) {
        final message = handleExceptionWithMessage(e);
        emit(WeatherFormLoadingFailedState(errorMessage: message));
      }
    });
  }
}
