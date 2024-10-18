import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloudness_model.freezed.dart';
part 'cloudness_model.g.dart';

@freezed
class CloudnessModel with _$CloudnessModel {
  const factory CloudnessModel({int? all}) = _CloudnessModel;

  factory CloudnessModel.fromJson(Map<String, dynamic> json) =>
      _$CloudnessModelFromJson(json);
}
