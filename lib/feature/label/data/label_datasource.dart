
import 'package:dio/dio.dart';
import 'package:bloc_file_generator/core/exceptions/exceptions.dart';
import 'package:bloc_file_generator/core/singletons/storage/storage.dart'; 
import 'package:bloc_file_generator/features/ads/data/models/announcement_model.dart';



abstract class LabelDataSource { 
    
  Future<int> getLabels({required int id});
}





class LabelDataSourceImpl implements LabelDataSource {
  final Dio _dio;

  LabelDataSourceImpl(this._dio);


  @override
  Future<int> getLabels({required int id}) async {
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

 
    