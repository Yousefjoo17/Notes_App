import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Custom_Button.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        // بتخلي العمودshrink
        //spacer:بتخلي العمود expand
        child: Column(
          children: [
             SizedBox(height: 60),
            CustomTextField(hinttext: 'title'),
             SizedBox(height: 16),
            CustomTextField(hinttext: 'Content', maxlines: 6),
             SizedBox(height: 48),
            CustomButton(),
             SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
