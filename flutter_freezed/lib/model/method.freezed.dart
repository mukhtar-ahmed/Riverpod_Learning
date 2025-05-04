// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Method {

 String get name; int? get id;
/// Create a copy of Method
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MethodCopyWith<Method> get copyWith => _$MethodCopyWithImpl<Method>(this as Method, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Method&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'Method(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class $MethodCopyWith<$Res>  {
  factory $MethodCopyWith(Method value, $Res Function(Method) _then) = _$MethodCopyWithImpl;
@useResult
$Res call({
 String name, int? id
});




}
/// @nodoc
class _$MethodCopyWithImpl<$Res>
    implements $MethodCopyWith<$Res> {
  _$MethodCopyWithImpl(this._self, this._then);

  final Method _self;
  final $Res Function(Method) _then;

/// Create a copy of Method
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc


class _Method extends Method {
  const _Method(this.name, {this.id}): super._();
  

@override final  String name;
@override final  int? id;

/// Create a copy of Method
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MethodCopyWith<_Method> get copyWith => __$MethodCopyWithImpl<_Method>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Method&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'Method(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class _$MethodCopyWith<$Res> implements $MethodCopyWith<$Res> {
  factory _$MethodCopyWith(_Method value, $Res Function(_Method) _then) = __$MethodCopyWithImpl;
@override @useResult
$Res call({
 String name, int? id
});




}
/// @nodoc
class __$MethodCopyWithImpl<$Res>
    implements _$MethodCopyWith<$Res> {
  __$MethodCopyWithImpl(this._self, this._then);

  final _Method _self;
  final $Res Function(_Method) _then;

/// Create a copy of Method
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = freezed,}) {
  return _then(_Method(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
