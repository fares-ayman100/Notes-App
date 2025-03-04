import 'package:flutter/material.dart';
import 'package:notes_app/Widget/add_note_buttom_sheet.dart';
import 'package:notes_app/Widget/notes_view_body.dart';
import 'package:notes_app/constant.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      resizeToAvoidBottomInset: false,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: kprimaryColor,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
      ),
    );
  }
}
