import 'package:flutter/material.dart';

Widget customTextFormField(
    {required TextEditingController controller,
    required String hintText,
    required FormFieldValidator<String> validator}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: const Color(0XFFD9D9D9),
          borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
            controller: controller,
            style: const TextStyle(color: Colors.black, fontSize: 20),
            validator: validator,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.black, fontSize: 20),
                filled: false,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                fillColor: const Color(0XFFD9D9D9),
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                focusedBorder: InputBorder.none),
          ))
        ],
      ),
    ),
  );
}
