import 'package:flutter/material.dart';
import 'package:notes_app/Widget/custom_appbar.dart';
import 'package:notes_app/Widget/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 25),
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Title', maxline: 1),
            SizedBox(height: 32),
            CustomTextField(hintText: 'Content', maxline: 5),
          ],
        ),
      ),
    );
  }
}
