import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/CustomFormTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 32),
            child: Text(
              'Your Note',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          CustomFormTextField(hintText: 'Enter Your Title Note ', labelText: 'Title Note',prefixIcon: Icons.title,maxline: 2,),
          SizedBox(height: 20,),
          CustomFormTextField(hintText: 'Enter Your Note ', labelText: 'Note',prefixIcon: Icons.note,maxline: 10,)
        ],
      ),
    );
  }
}
