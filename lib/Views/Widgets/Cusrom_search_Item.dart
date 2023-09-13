import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}