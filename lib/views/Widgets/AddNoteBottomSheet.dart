import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/CustomFormTextField.dart';
import 'package:note_app/views/Widgets/CustomMaterialButton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            CustomFormTextField(
              hintText: 'Enter Your Title ',
              labelText: 'Note',
              prefixIcon: Icons.title,
              maxline: 2,
              cursorColor: Colors.blue,
              labelColor: Colors.blue,
            ),
            SizedBox(height: 20),
            CustomFormTextField(
              hintText: 'Enter Your Content ',
              labelText: 'Content',
              prefixIcon: Icons.note,
              maxline: 7,
              cursorColor: Colors.blue,
              labelColor: Colors.blue,
            ),
            SizedBox(height: 20),
            CustomMaterialButton(onPressed: () {}, textButton: "Add"),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
