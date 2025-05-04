import 'package:freezed_annotation/freezed_annotation.dart';
part 'collections.freezed.dart';

@freezed //imuatble
abstract class ImutableCall with _$ImutableCall {
  const factory ImutableCall({required List<int> list}) = _ImutableCall;
}

//mutable
@Freezed(makeCollectionsUnmodifiable: false)
abstract class MutableCall with _$MutableCall {
  const factory MutableCall({required List<int> list}) = _MutableCall;
}
