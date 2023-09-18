import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Views/Widgets/Note_Item.dart';
import 'package:note/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note/models/Note_Model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>? notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
