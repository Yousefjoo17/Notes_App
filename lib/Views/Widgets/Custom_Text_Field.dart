import 'package:flutter/material.dart';
import 'package:note/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.hinttext,
      this.onchanged,
      this.maxlines = 1,
      this.onSaved});
  final String? hinttext;
  final Function(String)? onchanged;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onSaved: onSaved,
      validator: (text) {
        if (text?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
      style: const TextStyle(color: kPrimaryColor),
      onChanged: onchanged,
      maxLines: maxlines,
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
