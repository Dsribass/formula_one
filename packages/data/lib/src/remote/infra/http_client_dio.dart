import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:domain/domain.dart';

class HttpClientDio extends DioForNative {
  HttpClientDio([BaseOptions? baseOptions]) : super(baseOptions);

  @override
  Future<Response<T>> request<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      super
          .request<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      )
          .catchError(
        (e) {
          mapDioErrorToDomainError(e);
        },
        test: (e) => e is Exception,
      );

  void mapDioErrorToDomainError(Exception e) {
    if (e is DioError) {
      if (e.error is SocketException) {
        throw NoConnectionException(e);
      }

      final statusCode = e.response?.statusCode;
      if (statusCode != null) {
        if (statusCode == 401) {
          throw UnauthorizedException(e);
        }
        if (statusCode == 403) {
          throw ForbiddenException(e);
        }
        if (statusCode >= 400 && statusCode <= 499) {
          throw BadRequestException(e);
        }
        if (statusCode >= 500 && statusCode <= 599) {
          throw InternalServerException(e);
        }
      }
    }

    throw UnexpectedException(e);
  }
}

class StandingsHttpClientDio extends HttpClientDio {
  StandingsHttpClientDio(BaseOptions baseOptions) : super(baseOptions);
}

