import 'package:commercial/network/endpoint.dart';
import 'package:dio/dio.dart';

class API {
  static const int connectTimeout = 5000;
  static const int receiveTimeout = 3000;

  static Dio get() {
    BaseOptions options = new BaseOptions(
      baseUrl: EndPoint.SIGN_IN,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
    );
    Dio dio = new Dio(options);
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}
