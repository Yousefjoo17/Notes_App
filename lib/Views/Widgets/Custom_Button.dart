import 'package:flutter/material.dart';
import 'package:note/Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child: isloading
            ? const Center(
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(),
                ),
              )
            : const Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
