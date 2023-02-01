import 'package:chatting/infrastructure/navigation/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  handleLogin() async {
    if (_signInValidator()) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false,
      );
      try {
        final credential = await auth.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Get.back();
        if (credential.user!.emailVerified) {
          Get.snackbar("Success", "Login Success");
          Get.offAll(Routes.HOME);
        } else {
          Get.snackbar("Error", "Please verify your email");
        }
      } on FirebaseAuthException catch (error) {
        Get.back();
        if (error.code == 'user-not-found') {
          Get.snackbar("Error", "User not found");
          print('No user found for that email.');
        } else if (error.code == 'wrong-password') {
          Get.snackbar("Error", "Wrong password");
          print('Wrong password provided for that user.');
        } else {
          Get.snackbar("Error", "Something went wrong");
        }
      }
    }
  }

  bool _signInValidator() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("Error", "Please fill all the fields");
      return false;
    }
    if (passwordController.text.length < 6) {
      Get.snackbar("Error", "Password must be at least 6 characters");
      return false;
    }

    return true;
  }
}
