import 'package:dio/dio.dart';

class ApiRepository {
  String url;

  ApiRepository({required this.url});

  final Dio _dio = Dio();

  void get(
      {Function()? beforeSend,
      Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    await _dio.get(url).then((response) {
      if (beforeSend != null) {
        beforeSend();
      }
      if (onSuccess != null) {
        if (response.statusCode == 200) {
          onSuccess(response.data);
        }
      }
    }).catchError((error) {
      if (onError != null) {
        onError(error);
      }
    });
  }
}
