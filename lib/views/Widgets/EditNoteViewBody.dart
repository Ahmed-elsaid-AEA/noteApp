import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/CustomAppBar.dart';
import 'package:note_app/views/Widgets/CustomFormTextField.dart';
import 'package:note_app/views/Widgets/CustomMaterialButton.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(
            height: 30,
          ),
          CustomFormTextField(
            hintText: 'Edit Your Title',
            labelText: 'Title',
            prefixIcon: Icons.title,
            maxline: 2,
            cursorColor: Colors.blue,
            labelColor: Colors.blue,
          ),
          SizedBox(
            height: 15,
          ),
          CustomFormTextField(
            hintText: 'Edit Your Content',
            labelText: 'Content',
            maxline: 7,
            prefixIcon: Icons.note,
            cursorColor: Colors.blue,
            labelColor: Colors.blue,
          ),
          SizedBox(
            height: 15,
          ),
          CustomMaterialButton(onPressed: () {}, textButton: "Edit")
        ],
      ),
    );
  }
}
