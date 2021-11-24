// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  _Content call({String? rendered, bool? protected}) {
    return _Content(
      rendered: rendered,
      protected: protected,
    );
  }

  Content fromJson(Map<String, Object?> json) {
    return Content.fromJson(json);
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  String? get rendered => throw _privateConstructorUsedError;
  bool? get protected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call({String? rendered, bool? protected});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? rendered = freezed,
    Object? protected = freezed,
  }) {
    return _then(_value.copyWith(
      rendered: rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
      protected: protected == freezed
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call({String? rendered, bool? protected});
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? rendered = freezed,
    Object? protected = freezed,
  }) {
    return _then(_Content(
      rendered: rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
      protected: protected == freezed
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content implements _Content {
  _$_Content({this.rendered, this.protected});

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  final String? rendered;
  @override
  final bool? protected;

  @override
  String toString() {
    return 'Content(rendered: $rendered, protected: $protected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered) &&
            (identical(other.protected, protected) ||
                other.protected == protected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rendered, protected);

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(this);
  }
}

abstract class _Content implements Content {
  factory _Content({String? rendered, bool? protected}) = _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  String? get rendered;
  @override
  bool? get protected;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
