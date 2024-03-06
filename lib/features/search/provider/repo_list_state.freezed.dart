// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepoListState {
  FormStatus get status => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  bool? get pageLoading => throw _privateConstructorUsedError;
  RepoListModel? get model => throw _privateConstructorUsedError;
  List<Items>? get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoListStateCopyWith<RepoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoListStateCopyWith<$Res> {
  factory $RepoListStateCopyWith(
          RepoListState value, $Res Function(RepoListState) then) =
      _$RepoListStateCopyWithImpl<$Res, RepoListState>;
  @useResult
  $Res call(
      {FormStatus status,
      int pageNo,
      Failure? failure,
      bool? pageLoading,
      RepoListModel? model,
      List<Items>? list});

  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$RepoListStateCopyWithImpl<$Res, $Val extends RepoListState>
    implements $RepoListStateCopyWith<$Res> {
  _$RepoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pageNo = null,
    Object? failure = freezed,
    Object? pageLoading = freezed,
    Object? model = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      pageLoading: freezed == pageLoading
          ? _value.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RepoListModel?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get status {
    return $FormStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoListStateImplCopyWith<$Res>
    implements $RepoListStateCopyWith<$Res> {
  factory _$$RepoListStateImplCopyWith(
          _$RepoListStateImpl value, $Res Function(_$RepoListStateImpl) then) =
      __$$RepoListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormStatus status,
      int pageNo,
      Failure? failure,
      bool? pageLoading,
      RepoListModel? model,
      List<Items>? list});

  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$RepoListStateImplCopyWithImpl<$Res>
    extends _$RepoListStateCopyWithImpl<$Res, _$RepoListStateImpl>
    implements _$$RepoListStateImplCopyWith<$Res> {
  __$$RepoListStateImplCopyWithImpl(
      _$RepoListStateImpl _value, $Res Function(_$RepoListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pageNo = null,
    Object? failure = freezed,
    Object? pageLoading = freezed,
    Object? model = freezed,
    Object? list = freezed,
  }) {
    return _then(_$RepoListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      pageLoading: freezed == pageLoading
          ? _value.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RepoListModel?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ));
  }
}

/// @nodoc

class _$RepoListStateImpl implements _RepoListState {
  const _$RepoListStateImpl(
      {required this.status,
      required this.pageNo,
      this.failure,
      this.pageLoading,
      this.model,
      final List<Items>? list})
      : _list = list;

  @override
  final FormStatus status;
  @override
  final int pageNo;
  @override
  final Failure? failure;
  @override
  final bool? pageLoading;
  @override
  final RepoListModel? model;
  final List<Items>? _list;
  @override
  List<Items>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RepoListState(status: $status, pageNo: $pageNo, failure: $failure, pageLoading: $pageLoading, model: $model, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.pageLoading, pageLoading) ||
                other.pageLoading == pageLoading) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pageNo, failure,
      pageLoading, model, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoListStateImplCopyWith<_$RepoListStateImpl> get copyWith =>
      __$$RepoListStateImplCopyWithImpl<_$RepoListStateImpl>(this, _$identity);
}

abstract class _RepoListState implements RepoListState {
  const factory _RepoListState(
      {required final FormStatus status,
      required final int pageNo,
      final Failure? failure,
      final bool? pageLoading,
      final RepoListModel? model,
      final List<Items>? list}) = _$RepoListStateImpl;

  @override
  FormStatus get status;
  @override
  int get pageNo;
  @override
  Failure? get failure;
  @override
  bool? get pageLoading;
  @override
  RepoListModel? get model;
  @override
  List<Items>? get list;
  @override
  @JsonKey(ignore: true)
  _$$RepoListStateImplCopyWith<_$RepoListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
