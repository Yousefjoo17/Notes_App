import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Custom_Button.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        // بتخلي العمودshrink
        //spacer:بتخلي العمود expand
        child: Column(
          children: [
            const SizedBox(height: 60),
            CustomTextField(hinttext: 'title'),
            const SizedBox(height: 16),
            CustomTextField(hinttext: 'Content', maxlines: 6),
            const SizedBox(height: 48),
            CustomButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
