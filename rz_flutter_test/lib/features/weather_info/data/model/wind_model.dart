import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_model.freezed.dart';
part 'wind_model.g.dart';

@freezed
class WindModel with _$WindModel {
  const factory WindModel({double? speed}) = _WindModel;

  factory WindModel.fromJson(Map<String, dynamic> json) =>
      _$WindModelFromJson(json);
}
