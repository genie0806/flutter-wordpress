// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_guid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guid _$GuidFromJson(Map<String, dynamic> json) {
  return _Guid.fromJson(json);
}

/// @nodoc
class _$GuidTearOff {
  const _$GuidTearOff();

  _Guid call({String? rendered}) {
    return _Guid(
      rendered: rendered,
    );
  }

  Guid fromJson(Map<String, Object?> json) {
    return Guid.fromJson(json);
  }
}

/// @nodoc
const $Guid = _$GuidTearOff();

/// @nodoc
mixin _$Guid {
  String? get rendered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidCopyWith<Guid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidCopyWith<$Res> {
  factory $GuidCopyWith(Guid value, $Res Function(Guid) then) =
      _$GuidCopyWithImpl<$Res>;
  $Res call({String? rendered});
}

/// @nodoc
class _$GuidCopyWithImpl<$Res> implements $GuidCopyWith<$Res> {
  _$GuidCopyWithImpl(this._value, this._then);

  final Guid _value;
  // ignore: unused_field
  final $Res Function(Guid) _then;

  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_value.copyWith(
      rendered: rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GuidCopyWith<$Res> implements $GuidCopyWith<$Res> {
  factory _$GuidCopyWith(_Guid value, $Res Function(_Guid) then) =
      __$GuidCopyWithImpl<$Res>;
  @override
  $Res call({String? rendered});
}

/// @nodoc
class __$GuidCopyWithImpl<$Res> extends _$GuidCopyWithImpl<$Res>
    implements _$GuidCopyWith<$Res> {
  __$GuidCopyWithImpl(_Guid _value, $Res Function(_Guid) _then)
      : super(_value, (v) => _then(v as _Guid));

  @override
  _Guid get _value => super._value as _Guid;

  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_Guid(
      rendered: rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Guid implements _Guid {
  _$_Guid({this.rendered});

  factory _$_Guid.fromJson(Map<String, dynamic> json) => _$$_GuidFromJson(json);

  @override
  final String? rendered;

  @override
  String toString() {
    return 'Guid(rendered: $rendered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Guid &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rendered);

  @JsonKey(ignore: true)
  @override
  _$GuidCopyWith<_Guid> get copyWith =>
      __$GuidCopyWithImpl<_Guid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuidToJson(this);
  }
}

abstract class _Guid implements Guid {
  factory _Guid({String? rendered}) = _$_Guid;

  factory _Guid.fromJson(Map<String, dynamic> json) = _$_Guid.fromJson;

  @override
  String? get rendered;
  @override
  @JsonKey(ignore: true)
  _$GuidCopyWith<_Guid> get copyWith => throw _privateConstructorUsedError;
}
