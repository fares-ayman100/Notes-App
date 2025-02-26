import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Widget/edit_note_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
            color: Color(0xffFEDDB4),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    'Flutter tips',
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  ),

                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 16),
                    child: Text(
                      'Build your Career With Tharwat Samy',
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
                    'May 21,2022',
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
