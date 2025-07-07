// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Activity {

 String get activity; String get type; int get participants; double get price; String get key; double get accessibility;
/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCopyWith<Activity> get copyWith => _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Activity&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.type, type) || other.type == type)&&(identical(other.participants, participants) || other.participants == participants)&&(identical(other.price, price) || other.price == price)&&(identical(other.key, key) || other.key == key)&&(identical(other.accessibility, accessibility) || other.accessibility == accessibility));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activity,type,participants,price,key,accessibility);

@override
String toString() {
  return 'Activity(activity: $activity, type: $type, participants: $participants, price: $price, key: $key, accessibility: $accessibility)';
}


}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res>  {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) = _$ActivityCopyWithImpl;
@useResult
$Res call({
 String activity, String type, int participants, double price, String key, double accessibility
});




}
/// @nodoc
class _$ActivityCopyWithImpl<$Res>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activity = null,Object? type = null,Object? participants = null,Object? price = null,Object? key = null,Object? accessibility = null,}) {
  return _then(_self.copyWith(
activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,accessibility: null == accessibility ? _self.accessibility : accessibility // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Activity implements Activity {
  const _Activity({required this.activity, required this.type, required this.participants, required this.price, required this.key, required this.accessibility});
  factory _Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

@override final  String activity;
@override final  String type;
@override final  int participants;
@override final  double price;
@override final  String key;
@override final  double accessibility;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityCopyWith<_Activity> get copyWith => __$ActivityCopyWithImpl<_Activity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activity&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.type, type) || other.type == type)&&(identical(other.participants, participants) || other.participants == participants)&&(identical(other.price, price) || other.price == price)&&(identical(other.key, key) || other.key == key)&&(identical(other.accessibility, accessibility) || other.accessibility == accessibility));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activity,type,participants,price,key,accessibility);

@override
String toString() {
  return 'Activity(activity: $activity, type: $type, participants: $participants, price: $price, key: $key, accessibility: $accessibility)';
}


}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) = __$ActivityCopyWithImpl;
@override @useResult
$Res call({
 String activity, String type, int participants, double price, String key, double accessibility
});




}
/// @nodoc
class __$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activity = null,Object? type = null,Object? participants = null,Object? price = null,Object? key = null,Object? accessibility = null,}) {
  return _then(_Activity(
activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,accessibility: null == accessibility ? _self.accessibility : accessibility // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
