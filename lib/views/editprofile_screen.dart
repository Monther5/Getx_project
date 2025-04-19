import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/profilecontroller.dart';
import 'package:getx_project/views/widgets/main_button_widget.dart';
import 'package:getx_project/views/widgets/textfield_widget.dart';

class EditprofileScreen extends StatelessWidget {
  EditprofileScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
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
              controller: nameController,
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
              controller: emailController,
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
              controller: ageController,
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
                if (nameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    ageController.text.isNotEmpty) {
                  Controller.updateProfile(
                    nameController.text,
                    emailController.text,
                    ageController.text,
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
