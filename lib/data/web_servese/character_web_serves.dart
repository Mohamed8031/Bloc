import 'package:bloc_work/constants/strings.dart';
import 'package:dio/dio.dart';

class CharacterWebServes {
  late Dio dio;

  CharacterWebServes() {
    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    Response response = await dio.get('characters');

    try {
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
    }
    return response.data;
  }
}
