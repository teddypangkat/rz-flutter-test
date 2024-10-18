// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceModelImpl _$$ProvinceModelImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      altName: json['alt_name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProvinceModelImplToJson(_$ProvinceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alt_name': instance.altName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
