import 'package:flutter/material.dart';
import 'package:note/Views/Widgets/Cusrom_search_Icon.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;

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
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
