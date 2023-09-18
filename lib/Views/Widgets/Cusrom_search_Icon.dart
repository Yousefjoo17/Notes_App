import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onpressed});
  final Icon icon;
  final void Function()? onpressed;
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
          onPressed: onpressed,
          icon: icon,
        ),
      ),
    );
  }
}
