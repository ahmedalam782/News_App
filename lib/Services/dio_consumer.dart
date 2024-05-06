import 'package:dio/dio.dart';

import 'api_consumer.dart';

class DioConsumer extends APIConsumer {
  final Dio dio;

  DioConsumer({
    required this.dio,
  });

  @override
  Future getData(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (error) {
      return error.message;
    }
  }
}
