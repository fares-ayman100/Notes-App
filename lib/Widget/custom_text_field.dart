import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(color: primaryColor, fontSize: 25),
          border: buildBorder(),
          enabledBorder: buildBorder(Colors.white),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? primaryColor),
    );
  }
}
