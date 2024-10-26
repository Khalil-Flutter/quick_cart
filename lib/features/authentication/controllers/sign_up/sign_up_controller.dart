import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  /// variable
  Rx<bool> checkBoxValue = false.obs;

  /// checkbox value change
  void checkBoxValueToggle() {
    checkBoxValue.value = !checkBoxValue.value;
  }

  /// sign Up Logic
  void signUp() {
    // Login Logic
  }
}
