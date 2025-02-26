import 'package:flutter/material.dart';
import 'package:notes_app/Widget/custom_text_buttom.dart';
import 'package:notes_app/Widget/custom_text_field.dart';
import 'package:notes_app/constant.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(maxline: 1, hintText: 'Title'),
            SizedBox(height: 32),
            CustomTextField(maxline: 5, hintText: 'Content'),
            SizedBox(height: 100),
            CustomTextButtom(text: 'Add', color: primaryColor),
            SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
