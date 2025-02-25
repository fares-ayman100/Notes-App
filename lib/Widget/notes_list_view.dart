import 'package:flutter/material.dart';
import 'package:notes_app/Widget/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return NoteItem();
      },
    );
  }
}
