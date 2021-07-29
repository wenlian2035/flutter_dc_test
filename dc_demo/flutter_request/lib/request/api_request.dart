import 'package:dio/dio.dart';

class HttpRequest {


  static Future <dynamic?> requestsearch (String text) async {

    var dio = Dio();
    final response = await dio.get('https://frontend-test-api.digitalcreative.cn/?no-throttling=true&search=$text');

    return response;
  }


}