// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloudness_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CloudnessModel _$CloudnessModelFromJson(Map<String, dynamic> json) {
  return _CloudnessModel.fromJson(json);
}

/// @nodoc
mixin _$CloudnessModel {
  int? get all => throw _privateConstructorUsedError;

  /// Serializes this CloudnessModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CloudnessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CloudnessModelCopyWith<CloudnessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudnessModelCopyWith<$Res> {
  factory $CloudnessModelCopyWith(
          CloudnessModel value, $Res Function(CloudnessModel) then) =
      _$CloudnessModelCopyWithImpl<$Res, CloudnessModel>;
  @useResult
  $Res call({int? all});
}

/// @nodoc
class _$CloudnessModelCopyWithImpl<$Res, $Val extends CloudnessModel>
    implements $CloudnessModelCopyWith<$Res> {
  _$CloudnessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CloudnessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_value.copyWith(
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudnessModelImplCopyWith<$Res>
    implements $CloudnessModelCopyWith<$Res> {
  factory _$$CloudnessModelImplCopyWith(_$CloudnessModelImpl value,
          $Res Function(_$CloudnessModelImpl) then) =
      __$$CloudnessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? all});
}

/// @nodoc
class __$$CloudnessModelImplCopyWithImpl<$Res>
    extends _$CloudnessModelCopyWithImpl<$Res, _$CloudnessModelImpl>
    implements _$$CloudnessModelImplCopyWith<$Res> {
  __$$CloudnessModelImplCopyWithImpl(
      _$CloudnessModelImpl _value, $Res Function(_$CloudnessModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CloudnessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_$CloudnessModelImpl(
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudnessModelImpl
    with DiagnosticableTreeMixin
    implements _CloudnessModel {
  const _$CloudnessModelImpl({this.all});

  factory _$CloudnessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudnessModelImplFromJson(json);

  @override
  final int? all;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CloudnessModel(all: $all)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CloudnessModel'))
      ..add(DiagnosticsProperty('all', all));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudnessModelImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  /// Create a copy of CloudnessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudnessModelImplCopyWith<_$CloudnessModelImpl> get copyWith =>
      __$$CloudnessModelImplCopyWithImpl<_$CloudnessModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudnessModelImplToJson(
      this,
    );
  }
}

abstract class _CloudnessModel implements CloudnessModel {
  const factory _CloudnessModel({final int? all}) = _$CloudnessModelImpl;

  factory _CloudnessModel.fromJson(Map<String, dynamic> json) =
      _$CloudnessModelImpl.fromJson;

  @override
  int? get all;

  /// Create a copy of CloudnessModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CloudnessModelImplCopyWith<_$CloudnessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
