// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherModel {
  List<WeatherModel>? get weather => throw _privateConstructorUsedError;
  MainWeatherModel? get main => throw _privateConstructorUsedError;
  CloudnessModel? get cloud => throw _privateConstructorUsedError;
  WindModel? get wind => throw _privateConstructorUsedError;

  /// Serializes this CurrentWeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentWeatherModelCopyWith<CurrentWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherModelCopyWith<$Res> {
  factory $CurrentWeatherModelCopyWith(
          CurrentWeatherModel value, $Res Function(CurrentWeatherModel) then) =
      _$CurrentWeatherModelCopyWithImpl<$Res, CurrentWeatherModel>;
  @useResult
  $Res call(
      {List<WeatherModel>? weather,
      MainWeatherModel? main,
      CloudnessModel? cloud,
      WindModel? wind});

  $MainWeatherModelCopyWith<$Res>? get main;
  $CloudnessModelCopyWith<$Res>? get cloud;
  $WindModelCopyWith<$Res>? get wind;
}

/// @nodoc
class _$CurrentWeatherModelCopyWithImpl<$Res, $Val extends CurrentWeatherModel>
    implements $CurrentWeatherModelCopyWith<$Res> {
  _$CurrentWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
    Object? cloud = freezed,
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeatherModel?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as CloudnessModel?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel?,
    ) as $Val);
  }

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainWeatherModelCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainWeatherModelCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudnessModelCopyWith<$Res>? get cloud {
    if (_value.cloud == null) {
      return null;
    }

    return $CloudnessModelCopyWith<$Res>(_value.cloud!, (value) {
      return _then(_value.copyWith(cloud: value) as $Val);
    });
  }

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindModelCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindModelCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherModelImplCopyWith<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  factory _$$CurrentWeatherModelImplCopyWith(_$CurrentWeatherModelImpl value,
          $Res Function(_$CurrentWeatherModelImpl) then) =
      __$$CurrentWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WeatherModel>? weather,
      MainWeatherModel? main,
      CloudnessModel? cloud,
      WindModel? wind});

  @override
  $MainWeatherModelCopyWith<$Res>? get main;
  @override
  $CloudnessModelCopyWith<$Res>? get cloud;
  @override
  $WindModelCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$CurrentWeatherModelImplCopyWithImpl<$Res>
    extends _$CurrentWeatherModelCopyWithImpl<$Res, _$CurrentWeatherModelImpl>
    implements _$$CurrentWeatherModelImplCopyWith<$Res> {
  __$$CurrentWeatherModelImplCopyWithImpl(_$CurrentWeatherModelImpl _value,
      $Res Function(_$CurrentWeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
    Object? cloud = freezed,
    Object? wind = freezed,
  }) {
    return _then(_$CurrentWeatherModelImpl(
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeatherModel?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as CloudnessModel?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherModelImpl
    with DiagnosticableTreeMixin
    implements _CurrentWeatherModel {
  const _$CurrentWeatherModelImpl(
      {final List<WeatherModel>? weather, this.main, this.cloud, this.wind})
      : _weather = weather;

  factory _$CurrentWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherModelImplFromJson(json);

  final List<WeatherModel>? _weather;
  @override
  List<WeatherModel>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MainWeatherModel? main;
  @override
  final CloudnessModel? cloud;
  @override
  final WindModel? wind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWeatherModel(weather: $weather, main: $main, cloud: $cloud, wind: $wind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWeatherModel'))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('cloud', cloud))
      ..add(DiagnosticsProperty('wind', wind));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherModelImpl &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_weather), main, cloud, wind);

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherModelImplCopyWith<_$CurrentWeatherModelImpl> get copyWith =>
      __$$CurrentWeatherModelImplCopyWithImpl<_$CurrentWeatherModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherModel implements CurrentWeatherModel {
  const factory _CurrentWeatherModel(
      {final List<WeatherModel>? weather,
      final MainWeatherModel? main,
      final CloudnessModel? cloud,
      final WindModel? wind}) = _$CurrentWeatherModelImpl;

  factory _CurrentWeatherModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherModelImpl.fromJson;

  @override
  List<WeatherModel>? get weather;
  @override
  MainWeatherModel? get main;
  @override
  CloudnessModel? get cloud;
  @override
  WindModel? get wind;

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherModelImplCopyWith<_$CurrentWeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
