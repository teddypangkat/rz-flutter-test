import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:rz_flutter_test/features/weather_form/data/model/regencies_model.dart';

import '../model/province_model.dart';

class WeatherFormRepository {
  Future<List<ProvinceModel>> getListProvince() async {
    final data = await rootBundle.loadString('assets/provinces.json');

    List<ProvinceModel> provinces = (json.decode(data) as List)
        .map((data) => ProvinceModel.fromJson(data))
        .toList();

    return provinces;
  }

  Future<List<RegenciesModel>> getListRegency() async {
    final data = await rootBundle.loadString('assets/regencies.json');

    List<RegenciesModel> regencies = (json.decode(data) as List)
        .map((data) => RegenciesModel.fromJson(data))
        .toList();

    return regencies;
  }
}
