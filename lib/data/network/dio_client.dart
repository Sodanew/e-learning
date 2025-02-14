import 'package:dio/dio.dart';
import 'package:flutter_bloc_template/base/helper/helper.dart';

final class DioClient implements LibraryInitializer<void> {
  DioClient() {
    init();
  }

  late Dio _dio;

  Dio get dio => _dio;

  @override
  Future<void> init() async {
    _dio = Dio()
      ..options = BaseOptions(
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 20),
      );
  }

  DioClient addInterceptors(List<Interceptor> interceptors) {
    _dio.interceptors.addAll(interceptors);
    return this;
  }

  DioClient setBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
    return this;
  }
}
