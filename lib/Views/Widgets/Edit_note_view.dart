import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Edit_note_view_body.dart';
import 'package:note/models/Note_Model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditnoteViewBody(note: note),
    );
  }
}
