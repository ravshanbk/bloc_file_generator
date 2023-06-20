import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createEntity({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:$packageName/features/ads/data/models/${label}_model.dart';

class ${name}Entity extends Equatable {
  final int id;
  final String name;

  const ${name}Entity({
    this.id = -1,
    this.name = '',
  });

  @override
  List<Object?> get props => [
        id,name,
      ];
}

class ${name}Converter
    implements JsonConverter<${name}Entity, Map<String, dynamic>> {
  const ${name}Converter();

  @override
  ${name}Entity fromJson(Map<String, dynamic> json) =>
      ${name}Model.fromJson(json);

  @override
  Map<String, dynamic> toJson(${name}Entity object) => {};
}

    """;

  File('lib/features/$label/domain/entities/${label}_entity.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
