import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Custom_Button.dart';
import 'package:note/Views/Widgets/Custom_Text_Field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        // بتخلي العمودshrink
        //spacer:بتخلي العمود expand
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titlt, subTitle;
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
              titlt = value;
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
          const SizedBox(height: 48),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
