import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

class ClientHttp {
  final Dio _dio;

  ClientHttp(this._dio);

  AsyncResult<Response> get(String path, {Map<String, String>? headers}) async {
    try {
      final response = await _dio.get(path, options: Options(headers: headers));
      return Success(response);
    } on DioException catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Response> post(
    String path, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        options: Options(headers: headers),
      );
      return Success(response);
    } on DioException catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Response> put(
    String path, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        options: Options(headers: headers),
      );
      return Success(response);
    } on DioException catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Response> delete(
    String path, {
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        options: Options(headers: headers),
      );
      return Success(response);
    } on DioException catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Response> patch(
    String path, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    try {
      final response = await _dio.patch(
        path,
        data: data,
        options: Options(headers: headers),
      );
      return Success(response);
    } on DioException catch (e) {
      return Failure(e);
    }
  }
}
