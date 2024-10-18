// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regencies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegenciesModel _$RegenciesModelFromJson(Map<String, dynamic> json) {
  return _RegenciesModel.fromJson(json);
}

/// @nodoc
mixin _$RegenciesModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_id')
  String? get provinceId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_name')
  String? get altName => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  /// Serializes this RegenciesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegenciesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegenciesModelCopyWith<RegenciesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegenciesModelCopyWith<$Res> {
  factory $RegenciesModelCopyWith(
          RegenciesModel value, $Res Function(RegenciesModel) then) =
      _$RegenciesModelCopyWithImpl<$Res, RegenciesModel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'province_id') String? provinceId,
      String? name,
      @JsonKey(name: 'alt_name') String? altName,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$RegenciesModelCopyWithImpl<$Res, $Val extends RegenciesModel>
    implements $RegenciesModelCopyWith<$Res> {
  _$RegenciesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegenciesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provinceId = freezed,
    Object? name = freezed,
    Object? altName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      altName: freezed == altName
          ? _value.altName
          : altName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegenciesModelImplCopyWith<$Res>
    implements $RegenciesModelCopyWith<$Res> {
  factory _$$RegenciesModelImplCopyWith(_$RegenciesModelImpl value,
          $Res Function(_$RegenciesModelImpl) then) =
      __$$RegenciesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'province_id') String? provinceId,
      String? name,
      @JsonKey(name: 'alt_name') String? altName,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$RegenciesModelImplCopyWithImpl<$Res>
    extends _$RegenciesModelCopyWithImpl<$Res, _$RegenciesModelImpl>
    implements _$$RegenciesModelImplCopyWith<$Res> {
  __$$RegenciesModelImplCopyWithImpl(
      _$RegenciesModelImpl _value, $Res Function(_$RegenciesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegenciesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provinceId = freezed,
    Object? name = freezed,
    Object? altName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$RegenciesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      altName: freezed == altName
          ? _value.altName
          : altName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegenciesModelImpl
    with DiagnosticableTreeMixin
    implements _RegenciesModel {
  const _$RegenciesModelImpl(
      {this.id,
      @JsonKey(name: 'province_id') this.provinceId,
      this.name,
      @JsonKey(name: 'alt_name') this.altName,
      this.latitude,
      this.longitude});

  factory _$RegenciesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegenciesModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'province_id')
  final String? provinceId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'alt_name')
  final String? altName;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegenciesModel(id: $id, provinceId: $provinceId, name: $name, altName: $altName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegenciesModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('provinceId', provinceId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('altName', altName))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenciesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.altName, altName) || other.altName == altName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, provinceId, name, altName, latitude, longitude);

  /// Create a copy of RegenciesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenciesModelImplCopyWith<_$RegenciesModelImpl> get copyWith =>
      __$$RegenciesModelImplCopyWithImpl<_$RegenciesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegenciesModelImplToJson(
      this,
    );
  }
}

abstract class _RegenciesModel implements RegenciesModel {
  const factory _RegenciesModel(
      {final String? id,
      @JsonKey(name: 'province_id') final String? provinceId,
      final String? name,
      @JsonKey(name: 'alt_name') final String? altName,
      final double? latitude,
      final double? longitude}) = _$RegenciesModelImpl;

  factory _RegenciesModel.fromJson(Map<String, dynamic> json) =
      _$RegenciesModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'province_id')
  String? get provinceId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'alt_name')
  String? get altName;
  @override
  double? get latitude;
  @override
  double? get longitude;

  /// Create a copy of RegenciesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegenciesModelImplCopyWith<_$RegenciesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
