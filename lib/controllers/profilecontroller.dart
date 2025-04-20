import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Profilecontroller extends GetxController {
  final Rx<TextEditingController> ageController = TextEditingController().obs;
  final Rx<TextEditingController> nameController = TextEditingController().obs;
  final Rx<TextEditingController> emailController = TextEditingController().obs;

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
    nameController.value.clear();
    emailController.value.clear();
    ageController.value.clear();
  }
}
