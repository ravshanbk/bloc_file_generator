import 'dart:io';

import '../../../../core/extentions/on_string.dart';
import '../../../src/helper_models/field_constructor.dart';

void generateModel(
    {required String label, required String name, required String packageName, required FieldConstructor data}) {
  var content = """ 

import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:$packageName/features/$label/domain/entities/${label}_entity.dart';

part '${label}_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class ${name}Model extends ${name}Entity {
  const ${name}Model({
    
    ${data.superFields}
  });

  factory ${name}Model.fromJson(Map<String, dynamic> json) =>
      _\$${name}ModelFromJson(json);

  Map<String, dynamic> toJson() => _\$${name}ToJson(this);
}

    """;

  File('lib/features/$label/data/models/${label}_model.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
