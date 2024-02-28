// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetHistory _$GetHistoryFromJson(Map<String, dynamic> json) {
  return _GetHistory.fromJson(json);
}

/// @nodoc
mixin _$GetHistory {
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<Child> get child => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetHistoryCopyWith<GetHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHistoryCopyWith<$Res> {
  factory $GetHistoryCopyWith(
          GetHistory value, $Res Function(GetHistory) then) =
      _$GetHistoryCopyWithImpl<$Res, GetHistory>;
  @useResult
  $Res call(
      {int totalElements, int totalPages, int currentPage, List<Child> child});
}

/// @nodoc
class _$GetHistoryCopyWithImpl<$Res, $Val extends GetHistory>
    implements $GetHistoryCopyWith<$Res> {
  _$GetHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as List<Child>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetHistoryImplCopyWith<$Res>
    implements $GetHistoryCopyWith<$Res> {
  factory _$$GetHistoryImplCopyWith(
          _$GetHistoryImpl value, $Res Function(_$GetHistoryImpl) then) =
      __$$GetHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalElements, int totalPages, int currentPage, List<Child> child});
}

/// @nodoc
class __$$GetHistoryImplCopyWithImpl<$Res>
    extends _$GetHistoryCopyWithImpl<$Res, _$GetHistoryImpl>
    implements _$$GetHistoryImplCopyWith<$Res> {
  __$$GetHistoryImplCopyWithImpl(
      _$GetHistoryImpl _value, $Res Function(_$GetHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? child = null,
  }) {
    return _then(_$GetHistoryImpl(
      null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as List<Child>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GetHistoryImpl implements _GetHistory {
  const _$GetHistoryImpl(this.totalElements, this.totalPages, this.currentPage,
      final List<Child> child)
      : _child = child;

  factory _$GetHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetHistoryImplFromJson(json);

  @override
  final int totalElements;
  @override
  final int totalPages;
  @override
  final int currentPage;
  final List<Child> _child;
  @override
  List<Child> get child {
    if (_child is EqualUnmodifiableListView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_child);
  }

  @override
  String toString() {
    return 'GetHistory(totalElements: $totalElements, totalPages: $totalPages, currentPage: $currentPage, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHistoryImpl &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalElements, totalPages,
      currentPage, const DeepCollectionEquality().hash(_child));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHistoryImplCopyWith<_$GetHistoryImpl> get copyWith =>
      __$$GetHistoryImplCopyWithImpl<_$GetHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetHistoryImplToJson(
      this,
    );
  }
}

abstract class _GetHistory implements GetHistory {
  const factory _GetHistory(final int totalElements, final int totalPages,
      final int currentPage, final List<Child> child) = _$GetHistoryImpl;

  factory _GetHistory.fromJson(Map<String, dynamic> json) =
      _$GetHistoryImpl.fromJson;

  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  List<Child> get child;
  @override
  @JsonKey(ignore: true)
  _$$GetHistoryImplCopyWith<_$GetHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Child _$ChildFromJson(Map<String, dynamic> json) {
  return _Child.fromJson(json);
}

/// @nodoc
mixin _$Child {
  String get type => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCopyWith<Child> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCopyWith<$Res> {
  factory $ChildCopyWith(Child value, $Res Function(Child) then) =
      _$ChildCopyWithImpl<$Res, Child>;
  @useResult
  $Res call({String type, String from, String to, int amount, int time});
}

/// @nodoc
class _$ChildCopyWithImpl<$Res, $Val extends Child>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? from = null,
    Object? to = null,
    Object? amount = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildImplCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$$ChildImplCopyWith(
          _$ChildImpl value, $Res Function(_$ChildImpl) then) =
      __$$ChildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String from, String to, int amount, int time});
}

/// @nodoc
class __$$ChildImplCopyWithImpl<$Res>
    extends _$ChildCopyWithImpl<$Res, _$ChildImpl>
    implements _$$ChildImplCopyWith<$Res> {
  __$$ChildImplCopyWithImpl(
      _$ChildImpl _value, $Res Function(_$ChildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? from = null,
    Object? to = null,
    Object? amount = null,
    Object? time = null,
  }) {
    return _then(_$ChildImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildImpl implements _Child {
  const _$ChildImpl(this.type, this.from, this.to, this.amount, this.time);

  factory _$ChildImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildImplFromJson(json);

  @override
  final String type;
  @override
  final String from;
  @override
  final String to;
  @override
  final int amount;
  @override
  final int time;

  @override
  String toString() {
    return 'Child(type: $type, from: $from, to: $to, amount: $amount, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, from, to, amount, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      __$$ChildImplCopyWithImpl<_$ChildImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildImplToJson(
      this,
    );
  }
}

abstract class _Child implements Child {
  const factory _Child(final String type, final String from, final String to,
      final int amount, final int time) = _$ChildImpl;

  factory _Child.fromJson(Map<String, dynamic> json) = _$ChildImpl.fromJson;

  @override
  String get type;
  @override
  String get from;
  @override
  String get to;
  @override
  int get amount;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
