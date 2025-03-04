import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widget/edit_note_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EditNoteBody()));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  ),

                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 16),
                    child: Text(
                      note.subTitle,
                      style: TextStyle(fontSize: 22, color: Color(0xffB59063)),
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.trash,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text(
                    note.date,
                    style: TextStyle(fontSize: 20, color: Color(0xffB59063)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
