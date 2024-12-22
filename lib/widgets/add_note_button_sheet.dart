import 'package:flutter/material.dart';
import 'package:note_app/constents_file.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 400,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hint: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Content',
                maxLines: 5,
              ),
              SizedBox(
                height: 32,
              ),
              CustomButton()
            ],
          ),
        ),
      ),
    );
  }
}


