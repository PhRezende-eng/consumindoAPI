import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/user_model.dart';
import 'package:flutter_application_1/repository/i_user_repository.dart';

class UserRepositoryDio implements IUserRepository {
  final Dio _dio;

  UserRepositoryDio(this._dio);

  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await _dio
          .get<List>('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users');
      return response.data.map((e) => UserModel.fromMap(e)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
