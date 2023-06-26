
import 'package:dio/dio.dart';
import 'package:yosh_liderlar_hub/core/exceptions/exceptions.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart';
import 'package:yosh_liderlar_hub/features/vebinars/data/models/vebinars_model.dart';



abstract class VebinarsDataSource { 
    
  Future<GenericPagination<VebinarsModel>> getVebinarss({required String? next});
}





class VebinarsDataSourceImpl implements VebinarsDataSource {
  final Dio _dio;

  VebinarsDataSourceImpl(this._dio);


  @override
  Future<GenericPagination<VebinarsModel>> getVebinarss({required String? next}) async {
    try {
      final response = await _dio.get(
        'replece/this/with/your/end_point',
      );
      if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        return GenericPagination(next: null, previous:null, results:List.generate(10, (index) =>VebinarsModel(name: 'name $index',id: index)), count: 10);
      } else {
        throw ServerException(
          statusCode: response.statusCode ?? 400,
          errorMessage:  response.data,
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

 
    