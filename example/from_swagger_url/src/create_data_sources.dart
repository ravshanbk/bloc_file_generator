import '../../core/extentions/on_string.dart';
import 'commands/get_param_content_of_datasource.dart';
import 'commands/get_return_content_of_datasource.dart';

Future<void> createDataSources({required Map<String, dynamic> data, required String packageName}) async {
  final d = data;
  final values = data.values.toList();
  final keys = data.keys.toList();
  final f = 7;

  for (var i = 0; i < values.length; i++) {
    // final returnContent = getReturnContentOfDataSource(values[i]);
    final paramContent = getParamContentOfDataSource(values[i]);
    final v = 0;
    final label = keys[i].convertToSnakeCase();
  }
}
