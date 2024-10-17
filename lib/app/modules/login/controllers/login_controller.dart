import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter email and password.');
      return;
    }

    if (email == "user@mail.com" && password == "user") {
      Get.snackbar('Login Berhasil', "Welcome to Dhaf's Cakees");
      Get.toNamed('/home');
    } else {
      Get.snackbar('Login gagal', 'Harap Cek Email dan Password Anda');
    }
  }
}
