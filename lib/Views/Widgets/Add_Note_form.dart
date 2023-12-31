import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Views/Widgets/Colors_list_view.dart';
import 'package:note/Views/Widgets/Custom_Button.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';
import 'package:note/cubits/Add_note/add_note_cubit.dart';
import 'package:note/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note/models/Note_Model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      //to make vlaidation on the user input
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 60),
          CustomTextField(
            hinttext: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hinttext: 'Content',
            maxlines: 6,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 24),
          const ColorListView(),
          const SizedBox(height: 24),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currDate =
                        formatDate(DateTime.now(), [dd, '/', mm, '/', yyyy]);
                    NoteModel note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: currDate.toString(),
                      color: const Color(0xff).value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                isloading: state is AddNoteLoading,
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
