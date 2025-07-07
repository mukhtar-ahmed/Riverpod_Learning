// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enum_activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnumActivityState {

 ActivityStatus get status; Activity get activity; String get error;
/// Create a copy of EnumActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnumActivityStateCopyWith<EnumActivityState> get copyWith => _$EnumActivityStateCopyWithImpl<EnumActivityState>(this as EnumActivityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnumActivityState&&(identical(other.status, status) || other.status == status)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,activity,error);

@override
String toString() {
  return 'EnumActivityState(status: $status, activity: $activity, error: $error)';
}


}

/// @nodoc
abstract mixin class $EnumActivityStateCopyWith<$Res>  {
  factory $EnumActivityStateCopyWith(EnumActivityState value, $Res Function(EnumActivityState) _then) = _$EnumActivityStateCopyWithImpl;
@useResult
$Res call({
 ActivityStatus status, Activity activity, String error
});


$ActivityCopyWith<$Res> get activity;

}
/// @nodoc
class _$EnumActivityStateCopyWithImpl<$Res>
    implements $EnumActivityStateCopyWith<$Res> {
  _$EnumActivityStateCopyWithImpl(this._self, this._then);

  final EnumActivityState _self;
  final $Res Function(EnumActivityState) _then;

/// Create a copy of EnumActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? activity = null,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ActivityStatus,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of EnumActivityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res> get activity {
  
  return $ActivityCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}


/// @nodoc


class _EnumActivityState implements EnumActivityState {
  const _EnumActivityState({required this.status, required this.activity, required this.error});
  

@override final  ActivityStatus status;
@override final  Activity activity;
@override final  String error;

/// Create a copy of EnumActivityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnumActivityStateCopyWith<_EnumActivityState> get copyWith => __$EnumActivityStateCopyWithImpl<_EnumActivityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnumActivityState&&(identical(other.status, status) || other.status == status)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,activity,error);

@override
String toString() {
  return 'EnumActivityState(status: $status, activity: $activity, error: $error)';
}


}

/// @nodoc
abstract mixin class _$EnumActivityStateCopyWith<$Res> implements $EnumActivityStateCopyWith<$Res> {
  factory _$EnumActivityStateCopyWith(_EnumActivityState value, $Res Function(_EnumActivityState) _then) = __$EnumActivityStateCopyWithImpl;
@override @useResult
$Res call({
 ActivityStatus status, Activity activity, String error
});


@override $ActivityCopyWith<$Res> get activity;

}
/// @nodoc
class __$EnumActivityStateCopyWithImpl<$Res>
    implements _$EnumActivityStateCopyWith<$Res> {
  __$EnumActivityStateCopyWithImpl(this._self, this._then);

  final _EnumActivityState _self;
  final $Res Function(_EnumActivityState) _then;

/// Create a copy of EnumActivityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? activity = null,Object? error = null,}) {
  return _then(_EnumActivityState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ActivityStatus,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EnumActivityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res> get activity {
  
  return $ActivityCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}

// dart format on
