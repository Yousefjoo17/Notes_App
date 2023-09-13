import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Custom_app_bar.dart';
import 'package:note/Views/Widgets/Note_Item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomAppBar(),
          SizedBox(height: 20),
          NoteItem(),
        ],
      ),
    );
  }
}
