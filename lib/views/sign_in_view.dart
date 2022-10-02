import 'package:flutter/material.dart';
import 'package:flutter_auth_story/components/custom_text_field.dart';
import 'package:flutter_auth_story/constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
                height: 10,
                thickness: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Or sign in with",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      child: socialButton(
                          image: "assets/images/google.png", onTap: () {})),
                  Flexible(
                      child: socialButton(
                          image: "assets/images/github.png", onTap: () {})),
                  Flexible(
                      child: socialButton(
                          image: "assets/images/facebook.webp", onTap: () {})),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
    );
  }

  Widget socialButton(
      {required String image, required GestureTapCallback onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Image.asset(
          image,
          height: 35,
        ));
  }
}
