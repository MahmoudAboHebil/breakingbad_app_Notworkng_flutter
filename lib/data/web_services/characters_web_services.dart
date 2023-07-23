import 'package:dio/dio.dart';
import 'package:bloc_with_breakingbad_api/constants/strings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(microseconds: 20),
      receiveTimeout: Duration(microseconds: 20),
    );
    dio = Dio(options);
  }
  Future<List> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      print('##################');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
