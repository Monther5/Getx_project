import 'package:get/get.dart';

class Profilecontroller extends GetxController {
  var name = 'name  '.obs;
  var email = 'email'.obs;
  var Age = 'Age'.obs;

  void updateProfile(String newName, String newEmail, String newAge) {
    name.value = newName;
    email.value = newEmail;
    Age.value = newAge;
  }

  void clearProfile() {
    name.value = '';
    email.value = '';
    Age.value = '';
  }
}
