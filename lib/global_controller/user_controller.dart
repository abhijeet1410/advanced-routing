import 'package:get/get.dart';
import 'package:getx_params_app/models/user.dart';

class UserController extends GetxController with StateMixin<User?> {
  updateUser(User? user) {
    if (user == null) {
      change(null, status: RxStatus.loading());
      return;
    }
    change(null, status: RxStatus.loading());
    change(user, status: RxStatus.success());
  }
}