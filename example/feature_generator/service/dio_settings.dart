import 'package:dio/dio.dart';

class DioSettings {
  BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: 'https://panel.avto.uz/api/v1/',
    connectTimeout: Duration(milliseconds: 35000),
    receiveTimeout: Duration(milliseconds: 35000),
    followRedirects: false,
    headers: <String, dynamic>{'Accept-Language': 'uz'},
    validateStatus: (status) => status != null && status <= 500,
  );

  void setBaseOptions({String? lang}) {
    _dioBaseOptions = BaseOptions(
      baseUrl: 'https://panel.avto.uz/api/v1/',
      connectTimeout: Duration(milliseconds: 35000),
      receiveTimeout: Duration(milliseconds: 35000),
      headers: <String, dynamic>{'Accept-Language': lang},
      followRedirects: false,
      validateStatus: (status) => status != null && status <= 500,
    );
  }
}
