import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Cusrom_search_Icon.dart';

class CustomBar extends StatelessWidget {
  const CustomBar(
      {super.key, required this.title, required this.icon, this.onpressed});
  final String title;
  final Icon icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          onpressed: onpressed,
        ),
      ],
    );
  }
}
