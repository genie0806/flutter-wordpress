// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostsListStateTearOff {
  const _$PostsListStateTearOff();

  _PostsListState call({List<SimplePostModel> postList = const []}) {
    return _PostsListState(
      postList: postList,
    );
  }
}

/// @nodoc
const $PostsListState = _$PostsListStateTearOff();

/// @nodoc
mixin _$PostsListState {
  List<SimplePostModel> get postList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsListStateCopyWith<PostsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsListStateCopyWith<$Res> {
  factory $PostsListStateCopyWith(
          PostsListState value, $Res Function(PostsListState) then) =
      _$PostsListStateCopyWithImpl<$Res>;
  $Res call({List<SimplePostModel> postList});
}

/// @nodoc
class _$PostsListStateCopyWithImpl<$Res>
    implements $PostsListStateCopyWith<$Res> {
  _$PostsListStateCopyWithImpl(this._value, this._then);

  final PostsListState _value;
  // ignore: unused_field
  final $Res Function(PostsListState) _then;

  @override
  $Res call({
    Object? postList = freezed,
  }) {
    return _then(_value.copyWith(
      postList: postList == freezed
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<SimplePostModel>,
    ));
  }
}

/// @nodoc
abstract class _$PostsListStateCopyWith<$Res>
    implements $PostsListStateCopyWith<$Res> {
  factory _$PostsListStateCopyWith(
          _PostsListState value, $Res Function(_PostsListState) then) =
      __$PostsListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SimplePostModel> postList});
}

/// @nodoc
class __$PostsListStateCopyWithImpl<$Res>
    extends _$PostsListStateCopyWithImpl<$Res>
    implements _$PostsListStateCopyWith<$Res> {
  __$PostsListStateCopyWithImpl(
      _PostsListState _value, $Res Function(_PostsListState) _then)
      : super(_value, (v) => _then(v as _PostsListState));

  @override
  _PostsListState get _value => super._value as _PostsListState;

  @override
  $Res call({
    Object? postList = freezed,
  }) {
    return _then(_PostsListState(
      postList: postList == freezed
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<SimplePostModel>,
    ));
  }
}

/// @nodoc

class _$_PostsListState implements _PostsListState {
  _$_PostsListState({this.postList = const []});

  @JsonKey()
  @override
  final List<SimplePostModel> postList;

  @override
  String toString() {
    return 'PostsListState(postList: $postList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsListState &&
            const DeepCollectionEquality().equals(other.postList, postList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postList));

  @JsonKey(ignore: true)
  @override
  _$PostsListStateCopyWith<_PostsListState> get copyWith =>
      __$PostsListStateCopyWithImpl<_PostsListState>(this, _$identity);
}

abstract class _PostsListState implements PostsListState {
  factory _PostsListState({List<SimplePostModel> postList}) = _$_PostsListState;

  @override
  List<SimplePostModel> get postList;
  @override
  @JsonKey(ignore: true)
  _$PostsListStateCopyWith<_PostsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
