import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/services/login/login_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel> ();

  LoginController({required LoginService loginService}) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }
  
  Future <void> login() async{
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(MessageModel.info(title: "Sucesso", message: "Login realizado com sucesso"));
    } catch (e) {
      print(e.toString());
      loading(false);
      message(MessageModel.error(title: "Erro", message: "Erro no login"));
    }
  }

}