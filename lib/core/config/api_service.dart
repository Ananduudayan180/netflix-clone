import 'package:dio/dio.dart';
import 'package:netflix_clone/core/config/env.dart';

class ApiService {
  static final Dio dio = Dio(BaseOptions(baseUrl: Env.baseUrl));

  static void setupDio() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer ${Env.accessToken}';
          return handler.next(options);
        },
      ),
    );
  }
}
