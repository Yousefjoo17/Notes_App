import 'package:flutter/material.dart';
import 'package:note/Constants.dart';
import 'package:note/Views/Widgets/Colors_list_view.dart';
import 'package:note/models/Note_Model.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currIndex;
  @override
  void initState() {
    currIndex = KcolorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: KcolorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currIndex = index;
                widget.note.color = KcolorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: index == currIndex,
                color: KcolorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
