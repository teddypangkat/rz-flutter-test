// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WindModel _$WindModelFromJson(Map<String, dynamic> json) {
  return _WindModel.fromJson(json);
}

/// @nodoc
mixin _$WindModel {
  double? get speed => throw _privateConstructorUsedError;

  /// Serializes this WindModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WindModelCopyWith<WindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindModelCopyWith<$Res> {
  factory $WindModelCopyWith(WindModel value, $Res Function(WindModel) then) =
      _$WindModelCopyWithImpl<$Res, WindModel>;
  @useResult
  $Res call({double? speed});
}

/// @nodoc
class _$WindModelCopyWithImpl<$Res, $Val extends WindModel>
    implements $WindModelCopyWith<$Res> {
  _$WindModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_value.copyWith(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindModelImplCopyWith<$Res>
    implements $WindModelCopyWith<$Res> {
  factory _$$WindModelImplCopyWith(
          _$WindModelImpl value, $Res Function(_$WindModelImpl) then) =
      __$$WindModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? speed});
}

/// @nodoc
class __$$WindModelImplCopyWithImpl<$Res>
    extends _$WindModelCopyWithImpl<$Res, _$WindModelImpl>
    implements _$$WindModelImplCopyWith<$Res> {
  __$$WindModelImplCopyWithImpl(
      _$WindModelImpl _value, $Res Function(_$WindModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_$WindModelImpl(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindModelImpl with DiagnosticableTreeMixin implements _WindModel {
  const _$WindModelImpl({this.speed});

  factory _$WindModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindModelImplFromJson(json);

  @override
  final double? speed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WindModel(speed: $speed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WindModel'))
      ..add(DiagnosticsProperty('speed', speed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindModelImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindModelImplCopyWith<_$WindModelImpl> get copyWith =>
      __$$WindModelImplCopyWithImpl<_$WindModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindModelImplToJson(
      this,
    );
  }
}

abstract class _WindModel implements WindModel {
  const factory _WindModel({final double? speed}) = _$WindModelImpl;

  factory _WindModel.fromJson(Map<String, dynamic> json) =
      _$WindModelImpl.fromJson;

  @override
  double? get speed;

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindModelImplCopyWith<_$WindModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
