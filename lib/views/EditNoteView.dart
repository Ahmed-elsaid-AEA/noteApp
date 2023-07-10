import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: EditNoteViewBody()));
  }
}
