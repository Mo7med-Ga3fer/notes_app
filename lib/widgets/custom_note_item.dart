import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_note_view.dart';

import '../models/note_model.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView(
          note: note,
        )));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title, style: const TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(note.subTitle, style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),),
              ),
              trailing: IconButton(
                onPressed: (){
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                },
                icon: const Icon( 
                  Icons.delete_rounded,
                  size: 24,
                  color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(note.date, style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),),
            )
          ],
        ),
      ),
    );
  }
}