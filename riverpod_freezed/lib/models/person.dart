import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person, DiagnosticableTreeMixin {
  const factory Person({
    required int id,
    required String name,
    required String email,
  }) = _Person;

 
  
  // Implementing DiagnosticableTreeMixin methods
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('id', id));
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('email', email));
  }

  @override
  String toStringShallow({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person{id: $id, name: $name, email: $email}';
  }

  @override
  String toStringDeep({DiagnosticLevel minLevel = DiagnosticLevel.info, String prefixLineOne = '', String prefixOtherLines = ''}) {
    return '$prefixLineOnePerson{id: $id, name: $name, email: $email}';
  }

  @override
  DiagnosticsNode toDiagnosticsNode({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return DiagnosticsProperty('Person', this, level: minLevel);
  }
}
