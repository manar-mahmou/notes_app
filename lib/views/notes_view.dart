import 'package:flutter/material.dart';
import 'package:note_app/constents_file.dart';
import 'package:note_app/widgets/add_note_button_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteButtonSheet();
              });
        },
        backgroundColor: KPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}
