// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainWeatherModel _$MainWeatherModelFromJson(Map<String, dynamic> json) {
  return _MainWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$MainWeatherModel {
  double? get temp => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;

  /// Serializes this MainWeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainWeatherModelCopyWith<MainWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeatherModelCopyWith<$Res> {
  factory $MainWeatherModelCopyWith(
          MainWeatherModel value, $Res Function(MainWeatherModel) then) =
      _$MainWeatherModelCopyWithImpl<$Res, MainWeatherModel>;
  @useResult
  $Res call({double? temp, int? humidity, int? pressure});
}

/// @nodoc
class _$MainWeatherModelCopyWithImpl<$Res, $Val extends MainWeatherModel>
    implements $MainWeatherModelCopyWith<$Res> {
  _$MainWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainWeatherModelImplCopyWith<$Res>
    implements $MainWeatherModelCopyWith<$Res> {
  factory _$$MainWeatherModelImplCopyWith(_$MainWeatherModelImpl value,
          $Res Function(_$MainWeatherModelImpl) then) =
      __$$MainWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? temp, int? humidity, int? pressure});
}

/// @nodoc
class __$$MainWeatherModelImplCopyWithImpl<$Res>
    extends _$MainWeatherModelCopyWithImpl<$Res, _$MainWeatherModelImpl>
    implements _$$MainWeatherModelImplCopyWith<$Res> {
  __$$MainWeatherModelImplCopyWithImpl(_$MainWeatherModelImpl _value,
      $Res Function(_$MainWeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
  }) {
    return _then(_$MainWeatherModelImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainWeatherModelImpl
    with DiagnosticableTreeMixin
    implements _MainWeatherModel {
  const _$MainWeatherModelImpl({this.temp, this.humidity, this.pressure});

  factory _$MainWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainWeatherModelImplFromJson(json);

  @override
  final double? temp;
  @override
  final int? humidity;
  @override
  final int? pressure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainWeatherModel(temp: $temp, humidity: $humidity, pressure: $pressure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainWeatherModel'))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('pressure', pressure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainWeatherModelImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, humidity, pressure);

  /// Create a copy of MainWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainWeatherModelImplCopyWith<_$MainWeatherModelImpl> get copyWith =>
      __$$MainWeatherModelImplCopyWithImpl<_$MainWeatherModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _MainWeatherModel implements MainWeatherModel {
  const factory _MainWeatherModel(
      {final double? temp,
      final int? humidity,
      final int? pressure}) = _$MainWeatherModelImpl;

  factory _MainWeatherModel.fromJson(Map<String, dynamic> json) =
      _$MainWeatherModelImpl.fromJson;

  @override
  double? get temp;
  @override
  int? get humidity;
  @override
  int? get pressure;

  /// Create a copy of MainWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainWeatherModelImplCopyWith<_$MainWeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
