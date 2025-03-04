import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Cubit/notes/notes_cubit.dart';
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
        ).push(
          MaterialPageRoute(builder: (context) => EditNoteBody(note: note)),
        );
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
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text(
                    note.date,
                    style: TextStyle(fontSize: 20, color: Colors.black),
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
