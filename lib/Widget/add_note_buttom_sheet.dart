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
      child: SingleChildScrollView(child: TextFormAddNote()),
    );
  }
}

class TextFormAddNote extends StatefulWidget {
  TextFormAddNote({super.key});

  @override
  State<TextFormAddNote> createState() => _TextFormAddNoteState();
}

class _TextFormAddNoteState extends State<TextFormAddNote> {
  String? title;
  String? content;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            maxline: 1,
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 32),
          CustomTextField(
            maxline: 5,
            hintText: 'Content',
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 100),
          CustomTextButtom(
            text: 'Add',
            color: primaryColor,
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
