import 'package:flutter/material.dart';
import 'package:notes_app/Widget/custom_text_buttom.dart';
import 'package:notes_app/Widget/custom_text_field.dart';
import 'package:notes_app/constant.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
