import 'package:flutter/material.dart';
import 'package:flutter_auth_story/constants.dart';
import 'package:flutter_auth_story/views/sign_in_view.dart';
import 'package:flutter_auth_story/views/sign_up_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: null /* add child content here */,
        ),
        Positioned(
          bottom: 30,
          right: 0,
          child: Column(children: [
            roundedButton(
                backClr: kPrimaryColor,
                textClr: Colors.white,
                onTap: () {
                  shomBottomSheet(context, const SignUpScreen());
                },
                txt: "Sign Up"),
            roundedButton(
                backClr: Colors.white,
                textClr: Colors.black,
                onTap: () {
                  shomBottomSheet(context, const SignInScreen());
                },
                txt: "Sign in")
          ]),
        )
      ],
    ));
  }

  Widget roundedButton(
      {required Color backClr,
      required Color textClr,
      required String txt,
      required GestureTapCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)),
            color: backClr),
        child: Text(
          txt,
          style: TextStyle(color: textClr, fontSize: 30),
        ),
      ),
    );
  }

  shomBottomSheet(context, Widget route) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        isScrollControlled: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        )),
        builder: (builder) {
          return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: SizedBox(child: route));
        });
  }
}
