import 'package:app_filmes/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    width: Get.width * 0.7,
                    height: 42,
                    child: SignInButton(Buttons.Google,
                        onPressed: () => controller.login(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        text: "Entrar com o Google"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
