
import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: NoteItem(),
      );
    });
  }
}