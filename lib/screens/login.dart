import 'package:flutter/material.dart';
import 'package:todo_app/controllers/authController.dart';
import 'package:todo_app/screens/signup.dart';
import 'package:get/get.dart';

class Login extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                controller: emailController,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.login(
                      emailController.text, passwordController.text);
                },
                child: Text('Log In'),
              ),
              TextButton(
                onPressed: () {
                  Get.to(SignUp());
                },
                child: Text(
                  'Sign Up',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
