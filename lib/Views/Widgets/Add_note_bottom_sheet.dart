import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Views/Widgets/Add_Note_form.dart';
import 'package:note/cubits/Add_note/add_note_cubit.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});
  // بتخلي العمودshrink
  //spacer:بتخلي العمود expand
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('failed: ${state.message}');
          } else if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          print('re build 00000000000000000');

          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
/*
return ModalProgressHUD(
            inAsyncCall: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
 */