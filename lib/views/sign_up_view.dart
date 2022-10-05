import 'package:flutter/material.dart';
import 'package:flutter_auth_story/components/custom_text_field.dart';
import 'package:flutter_auth_story/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isTermAccpeted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Create\nAccount",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            const SizedBox(
              height: 10,
            ),
            customTextFormField(
                controller: emailController,
                hintText: "Email",
                validator: ((value) => null)),
            customTextFormField(
                controller: passwordController,
                hintText: "Password",
                validator: ((value) => null)),
            customTextFormField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                validator: ((value) => null)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "I have read & agree to T&C",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Switch(
                      value: isTermAccpeted,
                      onChanged: (value) {
                        setState(() {
                          isTermAccpeted = !isTermAccpeted;
                        });
                      })
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.all(20),
                width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(32)),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ]),
    );
  }
}
