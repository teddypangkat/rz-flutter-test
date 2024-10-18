// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regencies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegenciesModelImpl _$$RegenciesModelImplFromJson(Map<String, dynamic> json) =>
    _$RegenciesModelImpl(
      id: json['id'] as String?,
      provinceId: json['province_id'] as String?,
      name: json['name'] as String?,
      altName: json['alt_name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RegenciesModelImplToJson(
        _$RegenciesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province_id': instance.provinceId,
      'name': instance.name,
      'alt_name': instance.altName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
