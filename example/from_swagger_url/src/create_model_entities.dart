import '../../core/extentions/on_string.dart';
import '../feature/data/models/generate_model.dart';
import '../feature/domain/entities/generate_entity.dart';
import 'commands/get_model_fields.dart';

Future<void> createModelEntities({required Map<String, dynamic> data, required String packageName}) async {
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
