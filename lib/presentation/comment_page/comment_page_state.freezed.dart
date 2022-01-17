// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentPageStateTearOff {
  const _$CommentPageStateTearOff();

  _CommentPageState call(
      {List<CommentGetModel> model = const [],
      required CommentGetModel commentModel}) {
    return _CommentPageState(
      model: model,
      commentModel: commentModel,
    );
  }
}

/// @nodoc
const $CommentPageState = _$CommentPageStateTearOff();

/// @nodoc
mixin _$CommentPageState {
  List<CommentGetModel> get model => throw _privateConstructorUsedError;
  CommentGetModel get commentModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentPageStateCopyWith<CommentPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPageStateCopyWith<$Res> {
  factory $CommentPageStateCopyWith(
          CommentPageState value, $Res Function(CommentPageState) then) =
      _$CommentPageStateCopyWithImpl<$Res>;
  $Res call({List<CommentGetModel> model, CommentGetModel commentModel});

  $CommentGetModelCopyWith<$Res> get commentModel;
}

/// @nodoc
class _$CommentPageStateCopyWithImpl<$Res>
    implements $CommentPageStateCopyWith<$Res> {
  _$CommentPageStateCopyWithImpl(this._value, this._then);

  final CommentPageState _value;
  // ignore: unused_field
  final $Res Function(CommentPageState) _then;

  @override
  $Res call({
    Object? model = freezed,
    Object? commentModel = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<CommentGetModel>,
      commentModel: commentModel == freezed
          ? _value.commentModel
          : commentModel // ignore: cast_nullable_to_non_nullable
              as CommentGetModel,
    ));
  }

  @override
  $CommentGetModelCopyWith<$Res> get commentModel {
    return $CommentGetModelCopyWith<$Res>(_value.commentModel, (value) {
      return _then(_value.copyWith(commentModel: value));
    });
  }
}

/// @nodoc
abstract class _$CommentPageStateCopyWith<$Res>
    implements $CommentPageStateCopyWith<$Res> {
  factory _$CommentPageStateCopyWith(
          _CommentPageState value, $Res Function(_CommentPageState) then) =
      __$CommentPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CommentGetModel> model, CommentGetModel commentModel});

  @override
  $CommentGetModelCopyWith<$Res> get commentModel;
}

/// @nodoc
class __$CommentPageStateCopyWithImpl<$Res>
    extends _$CommentPageStateCopyWithImpl<$Res>
    implements _$CommentPageStateCopyWith<$Res> {
  __$CommentPageStateCopyWithImpl(
      _CommentPageState _value, $Res Function(_CommentPageState) _then)
      : super(_value, (v) => _then(v as _CommentPageState));

  @override
  _CommentPageState get _value => super._value as _CommentPageState;

  @override
  $Res call({
    Object? model = freezed,
    Object? commentModel = freezed,
  }) {
    return _then(_CommentPageState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<CommentGetModel>,
      commentModel: commentModel == freezed
          ? _value.commentModel
          : commentModel // ignore: cast_nullable_to_non_nullable
              as CommentGetModel,
    ));
  }
}

/// @nodoc

class _$_CommentPageState implements _CommentPageState {
  _$_CommentPageState({this.model = const [], required this.commentModel});

  @JsonKey()
  @override
  final List<CommentGetModel> model;
  @override
  final CommentGetModel commentModel;

  @override
  String toString() {
    return 'CommentPageState(model: $model, commentModel: $commentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentPageState &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality()
                .equals(other.commentModel, commentModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(commentModel));

  @JsonKey(ignore: true)
  @override
  _$CommentPageStateCopyWith<_CommentPageState> get copyWith =>
      __$CommentPageStateCopyWithImpl<_CommentPageState>(this, _$identity);
}

abstract class _CommentPageState implements CommentPageState {
  factory _CommentPageState(
      {List<CommentGetModel> model,
      required CommentGetModel commentModel}) = _$_CommentPageState;

  @override
  List<CommentGetModel> get model;
  @override
  CommentGetModel get commentModel;
  @override
  @JsonKey(ignore: true)
  _$CommentPageStateCopyWith<_CommentPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
