import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomTextField(hinttext: 'Add note'),
        ],
      ),
    );
  }
}
