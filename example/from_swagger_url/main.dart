import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import '../core/extentions/on_string.dart';
import 'feature/data/models/generate_model.dart';
import 'feature/domain/entities/generate_entity.dart';
import 'src/commands/get_model_entity_elements.dart';
import 'src/create_data_sources.dart';
import 'src/create_model_entities.dart';

Future<void> main() async {
  var current = Directory.current;

  var packageName = current.path.split('\\').toList().last;
  final swaggerUrlAvtoUz = 'https://panel.avto.uz/swagger/?format=openapi';
  final swaggerUrlShirinMeva = 'https://panel.avto.uz/swagger/?format=openapi';
  var _dio = Dio();

  // final response = await _dio.get(swaggerUrlAvtoUz);
  var input = await File('C:/Users/rkhuj/StudioProjects/bloc_file_generator/example/from_swagger_url/auto_uz_swag.json')
      .readAsString();

  final localResponse = jsonDecode(input);
  final f = 0;
  // final definitions = response.data['definitions'] as Map<String, dynamic>;
  final definitions = localResponse['definitions'] as Map<String, dynamic>;
  // final paths = response.data['paths'] as Map<String, dynamic>;
  final paths = localResponse['paths'] as Map<String, dynamic>;

  // await createModelEntities(data: definitions, packageName: packageName);
  await createDataSources(data: paths, packageName: packageName);
}
