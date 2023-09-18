import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currIndex = -1;
  final List<Color> colorsList = [
    const Color(0xffD7263D),
    const Color(0xffF46036),
    const Color(0xff2E294E),
    const Color(0xff1B998B),
    const Color(0xffC5D86D),
    const Color(0xffD6D327),
    const Color(0xffF536CF),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currIndex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
