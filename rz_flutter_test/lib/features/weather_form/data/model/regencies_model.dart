import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'regencies_model.freezed.dart';
part 'regencies_model.g.dart';

@freezed
class RegenciesModel with _$RegenciesModel {
  const factory RegenciesModel(
      {String? id,
      @JsonKey(name: 'province_id') String? provinceId,
      String? name,
      @JsonKey(name: 'alt_name') String? altName,
      double? latitude,
      double? longitude}) = _RegenciesModel;

  factory RegenciesModel.fromJson(Map<String, dynamic> json) =>
      _$RegenciesModelFromJson(json);
}
