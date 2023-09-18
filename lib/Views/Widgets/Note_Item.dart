import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/Views/Widgets/Edit_note_view.dart';
import 'package:note/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note/models/Note_Model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(note: note);
        }));
      },
      child: Container(
          //padding: const EdgeInsets.only(top: 12, bottom: 16, left: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
