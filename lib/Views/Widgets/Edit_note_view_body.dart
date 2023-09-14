import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';
import 'package:note/Views/Widgets/Custom_bar.dart';

class EditnoteViewBody extends StatelessWidget {
  const EditnoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
           SizedBox(height: 60),
          CustomBar(title: 'Edit Note', icon:  Icon(Icons.done)),
           SizedBox(height: 60),
          CustomTextField(
            hinttext: 'title',
            maxlines: 1,
          ),
           SizedBox(height: 60),
          CustomTextField(
            hinttext: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
