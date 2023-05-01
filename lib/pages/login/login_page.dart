import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_params_app/pages/login/login_controller.dart';
import 'package:getx_params_app/utils/app_decorations.dart';

import '../../utils/app_primary_button.dart';

class LoginPage extends GetResponsiveView {
  static const routeName = '/login';

  @override
  final LoginController controller = LoginController()..onInit();

  @override
  Widget? desktop() {
    return Scaffold(
      body: Obx(
        () => Form(
          key: controller.formKey,
          autovalidateMode: controller.autoValidateMode.value,
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    constraints:
                    BoxConstraints(maxHeight: 295, maxWidth: Get.width),
                    padding: const EdgeInsets.fromLTRB(32, 30, 0, 26),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffffffff),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.12),
                            blurRadius: 23,
                            offset: Offset(0, 8))
                      ],
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                          child: Text("Login to continue",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff2F415E))),
                        ),
                        // const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            initialValue: controller.email,
                            decoration:
                            AppDecorations.textFieldDecoration(Get.context!)
                                .copyWith(
                              labelText: "Enter email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onEditingComplete: () =>
                                Get.focusScope!.nextFocus(),
                            textInputAction: TextInputAction.done,
                            onSaved: (v) => controller.onEmailSaved(v),
                            onChanged: (v) => controller.onEmailSaved(v),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            initialValue: controller.pw,
                            decoration:
                            AppDecorations.textFieldDecoration(Get.context!)
                                .copyWith(
                              labelText: "Enter pw",
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            onEditingComplete: () =>
                                Get.focusScope!.nextFocus(),
                            textInputAction: TextInputAction.done,
                            onSaved: (v) => controller.onPwSaved(v),
                            onChanged: (v) => controller.onPwSaved(v),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: AppPrimaryButton(
                            fixedSize: Size(
                                MediaQuery.of(Get.context!).size.width, 62),
                            key: controller.buttonKey,
                            onPressed: controller.loginEmail,
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                letterSpacing: 0,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
