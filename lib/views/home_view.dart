import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

import '../widgets/add_note_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
            builder: (context){
              return const AddNoteBottomSheet();
            }
            );
        },
        child: const Icon(Icons.add),
        ),
      body: const NotesViewBody(),
    );
  }
}

