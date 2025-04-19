import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/profilecontroller.dart';
import 'package:getx_project/views/widgets/main_button_widget.dart';
import 'package:getx_project/views/widgets/textfield_widget.dart';

class EditprofileScreen extends StatelessWidget {
  EditprofileScreen({super.key});

  final Controller = Get.put(Profilecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Edit your profile here',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextfieldWidget(
              controller: Controller.nameController.value,
              hintText: 'Enter your name',
              labelText: 'Name',
              errorText: 'Please enter a valid name',
              keyboardType: TextInputType.name,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  Controller.name.value = value;
                }
              },
            ),
            const SizedBox(height: 20),
            TextfieldWidget(
              controller: Controller.emailController.value,
              hintText: 'Enter your email',
              labelText: 'Email',

              errorText: 'Please enter a valid email',

              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  Controller.email.value = value;
                }
              },
            ),
            const SizedBox(height: 20),
            TextfieldWidget(
              controller: Controller.ageController.value,
              hintText: 'Enter your age',
              labelText: 'Age',
              errorText: 'Please enter a valid age',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  Controller.Age.value = value;
                }
              },
            ),
            const SizedBox(height: 20),
            MainButtonWidget(
              TextButton: 'Save Changes',
              onPressed: () {
                if (Controller.nameController.value.text.isNotEmpty &&
                    Controller.emailController.value.text.isNotEmpty &&
                    Controller.ageController.value.text.isNotEmpty) {
                  Controller.updateProfile(
                    Controller.nameController.value.text,
                    Controller.emailController.value.text,
                    Controller.ageController.value.text,
                  );
                  Get.back();
                } else {
                  Get.snackbar('Error', 'Please fill all fields');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
