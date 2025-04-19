import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/profilecontroller.dart';
import 'package:getx_project/views/editprofile_screen.dart';
import 'package:getx_project/views/widgets/main_button_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final Controller = Get.put(Profilecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name: ${Controller.name.value}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),

              Text(
                'Email: ${Controller.email.value}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),

              Text(
                'Age: ${Controller.Age.value}',
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 100),
              MainButtonWidget(
                TextButton: 'Edit Profile page',
                onPressed: () {
                  Get.to(() => EditprofileScreen());
                },
              ),
              const SizedBox(height: 20),
              MainButtonWidget(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                TextButton: 'Clear Profile',
                color: Colors.red,
                fontSize: 12,
                onPressed: () {
                  Controller.clearProfile();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
