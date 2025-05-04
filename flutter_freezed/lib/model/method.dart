import 'package:freezed_annotation/freezed_annotation.dart';
part 'method.freezed.dart';

@freezed
abstract class Method with _$Method {
  const Method._();
  const factory Method(String name, {int? id}) = _Method;

  void printMethod() {
    print("Method name $name , version ${id ?? 0}");
  }
}
