import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createDataSource({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 

import 'package:dio/dio.dart';
import 'package:$packageName/core/exceptions/exceptions.dart';
import 'package:$packageName/core/singletons/storage/storage.dart'; 
import 'package:$packageName/features/ads/data/models/announcement_model.dart';



abstract class ${name}DataSource { 
    
  Future<int> get${name}s({required int id});
}





class ${name}DataSourceImpl implements ${name}DataSource {
  final Dio _dio;

  ${name}DataSourceImpl(this._dio);


  @override
  Future<int> get${name}s({required int id}) async {
    try {
      final response = await _dio.get(
        'replece/this/with/your/end_point',
      );
      if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        return 1;
      } else {
        throw ServerException(
          statusCode: response.statusCode ?? 400,
          errorMessage: MyFunctions.getErrorMessage(response: response.data),
        );
      }
    } on ServerException catch (e) {
      throw ServerException(statusCode: e.statusCode, errorMessage: e.errorMessage);
    } on DioError {
      throw DioException();
    } on Exception catch (e) {
      throw ParsingException(errorMessage: e.toString());
    }
  }
}

 
    """;

  File('lib/features/$label/data/${label}_datasource.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
