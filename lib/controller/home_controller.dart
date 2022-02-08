import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  var email = "".obs;
  var counter = 0.obs;

  void getEmail() {
    String existEmail = GetStorage().read("email") ?? "No email added";
    email.value = existEmail;
  }

  void updateEmail(String newEmail) {
    GetStorage().write("email", newEmail);
    email.value = newEmail;
  }

  void incriment() {
    counter++;
  }
}
