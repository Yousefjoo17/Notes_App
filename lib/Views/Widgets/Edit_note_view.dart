import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditnoteViewBody(),
    );
  }
}