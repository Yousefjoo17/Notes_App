import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';
import 'package:note/Views/Widgets/Custom_bar.dart';
import 'package:note/Views/Widgets/EditNote_ColorLitsView.dart';
import 'package:note/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note/models/Note_Model.dart';

class EditnoteViewBody extends StatefulWidget {
  const EditnoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditnoteViewBody> createState() => _EditnoteViewBodyState();
}

class _EditnoteViewBodyState extends State<EditnoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(height: 60),
          CustomBar(
            title: 'Edit Note',
            icon: const Icon(
              Icons.done,
            ),
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 10),
          CustomTextField(
            hinttext: widget.note.title,
            maxlines: 1,
            onchanged: (data) {
              title = data;
            },
          ),
          const SizedBox(height: 60),
          CustomTextField(
            hinttext: widget.note.subTitle,
            maxlines: 5,
            onchanged: (data) {
              subTitle = data;
            },
          ),
          const SizedBox(height: 20),
          EditNotesColorsList(note: widget.note),
        ],
      ),
    );
  }
}
