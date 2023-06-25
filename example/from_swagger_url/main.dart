import 'dart:io';

import 'package:dio/dio.dart';

import '../core/extentions/on_string.dart';
import 'feature/data/models/generate_model.dart';
import 'feature/domain/entities/generate_entity.dart';
import 'src/commands/get_model_fields.dart';

Future<void> main() async {
  var current = Directory.current;

  var packageName = current.path.split('\\').toList().last;
  final swaggerUrlAvtoUz = 'https://panel.avto.uz/swagger/?format=openapi';
  final swaggerUrlShirinMeva = 'https://panel.avto.uz/swagger/?format=openapi';
  Dio _dio = Dio();

  final response = await _dio.get(swaggerUrlAvtoUz);
  final Map<String, dynamic> data = response.data['definitions'] as Map<String, dynamic>;

  final vv = data.runtimeType;
  final values = data.values.toList();
  final keys = data.keys.toList();

  for (var i = 0; i < values.length; i++) {
    if (keys[i].contains('/')) continue;
    final modelFields = getModelFields(values[i]);
    final label = keys[i].convertToSnakeCase();
    generateEntity(label: label, packageName: packageName, data: modelFields, name: keys[i]);
    generateModel(label: label, packageName: packageName, data: modelFields, name: keys[i]);
  }
}
