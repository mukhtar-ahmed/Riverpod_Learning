// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivityState {

 ActivityStatus get status; Activity get activity; String get error;
/// Create a copy of ActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityStateCopyWith<ActivityState> get copyWith => _$ActivityStateCopyWithImpl<ActivityState>(this as ActivityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityState&&(identical(other.status, status) || other.status == status)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,activity,error);

@override
String toString() {
  return 'ActivityState(status: $status, activity: $activity, error: $error)';
}


}

/// @nodoc
abstract mixin class $ActivityStateCopyWith<$Res>  {
  factory $ActivityStateCopyWith(ActivityState value, $Res Function(ActivityState) _then) = _$ActivityStateCopyWithImpl;
@useResult
$Res call({
 ActivityStatus status, Activity activity, String error
});


$ActivityCopyWith<$Res> get activity;

}
/// @nodoc
class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._self, this._then);

  final ActivityState _self;
  final $Res Function(ActivityState) _then;

/// Create a copy of ActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? activity = null,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ActivityStatus,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ActivityState
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


class _ActivityState implements ActivityState {
  const _ActivityState({required this.status, required this.activity, required this.error});
  

@override final  ActivityStatus status;
@override final  Activity activity;
@override final  String error;

/// Create a copy of ActivityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityStateCopyWith<_ActivityState> get copyWith => __$ActivityStateCopyWithImpl<_ActivityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityState&&(identical(other.status, status) || other.status == status)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,activity,error);

@override
String toString() {
  return 'ActivityState(status: $status, activity: $activity, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ActivityStateCopyWith<$Res> implements $ActivityStateCopyWith<$Res> {
  factory _$ActivityStateCopyWith(_ActivityState value, $Res Function(_ActivityState) _then) = __$ActivityStateCopyWithImpl;
@override @useResult
$Res call({
 ActivityStatus status, Activity activity, String error
});


@override $ActivityCopyWith<$Res> get activity;

}
/// @nodoc
class __$ActivityStateCopyWithImpl<$Res>
    implements _$ActivityStateCopyWith<$Res> {
  __$ActivityStateCopyWithImpl(this._self, this._then);

  final _ActivityState _self;
  final $Res Function(_ActivityState) _then;

/// Create a copy of ActivityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? activity = null,Object? error = null,}) {
  return _then(_ActivityState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ActivityStatus,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ActivityState
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
