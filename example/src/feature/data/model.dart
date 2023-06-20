import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createModel({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 

import 'package:dio/dio.dart';
import 'package:$packageName/core/exceptions/exceptions.dart';
import 'package:$packageName/core/singletons/storage/storage.dart';
import 'package:$packageName/core/utils/my_functions.dart';
import 'package:$packageName/features/ads/data/models/announcement_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:$packageName/features/ads/domain/entities/category_entity.dart';

part '${label}_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class ${name}Model extends ${name}Entity {
  const ${name}Model({
     super.id,
     super.name, 
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
