import 'package:flutter/material.dart';
import 'package:note/Constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hinttext, this.onchanged});
  final String? hinttext;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: kPrimaryColor,
      ),
      onChanged: onchanged,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.white),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildborder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
