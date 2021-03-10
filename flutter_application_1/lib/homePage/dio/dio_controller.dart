import 'package:flutter_application_1/homePage/dio/repositoryDio/user_repository_dio.dart';
import 'package:flutter_application_1/repository/i_user_repository.dart';
import 'package:get/get.dart';

class DioController extends GetxController with StateMixin {
  final IUserRepository _dioRepository;

  DioController(this._dioRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _dioRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}
