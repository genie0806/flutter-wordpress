// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
class _$TitleTearOff {
  const _$TitleTearOff();

  _Title call({String? rendered}) {
    return _Title(
      rendered: rendered,
    );
  }

  Title fromJson(Map<String, Object?> json) {
    return Title.fromJson(json);
  }
}

/// @nodoc
const $Title = _$TitleTearOff();

/// @nodoc
mixin _$Title {
  String? get rendered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) =
      _$TitleCopyWithImpl<$Res>;
  $Res call({String? rendered});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res> implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  final Title _value;
  // ignore: unused_field
  final $Res Function(Title) _then;

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
abstract class _$TitleCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$TitleCopyWith(_Title value, $Res Function(_Title) then) =
      __$TitleCopyWithImpl<$Res>;
  @override
  $Res call({String? rendered});
}

/// @nodoc
class __$TitleCopyWithImpl<$Res> extends _$TitleCopyWithImpl<$Res>
    implements _$TitleCopyWith<$Res> {
  __$TitleCopyWithImpl(_Title _value, $Res Function(_Title) _then)
      : super(_value, (v) => _then(v as _Title));

  @override
  _Title get _value => super._value as _Title;

  @override
  $Res call({
    Object? rendered = freezed,
  }) {
    return _then(_Title(
      rendered: rendered == freezed
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Title implements _Title {
  _$_Title({this.rendered});

  factory _$_Title.fromJson(Map<String, dynamic> json) =>
      _$$_TitleFromJson(json);

  @override
  final String? rendered;

  @override
  String toString() {
    return 'Title(rendered: $rendered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Title &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rendered);

  @JsonKey(ignore: true)
  @override
  _$TitleCopyWith<_Title> get copyWith =>
      __$TitleCopyWithImpl<_Title>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitleToJson(this);
  }
}

abstract class _Title implements Title {
  factory _Title({String? rendered}) = _$_Title;

  factory _Title.fromJson(Map<String, dynamic> json) = _$_Title.fromJson;

  @override
  String? get rendered;
  @override
  @JsonKey(ignore: true)
  _$TitleCopyWith<_Title> get copyWith => throw _privateConstructorUsedError;
}
