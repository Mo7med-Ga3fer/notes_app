import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('Flutter Tips', style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text('This app is built by Mohamed Salah', style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),),
              ),
              trailing: const Icon(Icons.delete_rounded,
              size: 24,
              color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('July22 , 2023', style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),),
            )
          ],
        ),
      ),
    );
  }
}