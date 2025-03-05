import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.maxline,
    this.onSaved,
    this.onChanged,
  });
  final String hintText;
  final int maxline;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      
      onSaved: onSaved,
      style: TextStyle(fontSize: 22, color: Colors.white),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
        return null;
      },
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hintText,
        

        hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
        border: buildBorder(),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? kprimaryColor),
    );
  }
}
