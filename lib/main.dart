import 'package:flutter/material.dart';
import 'package:note_app/Shared/Constant.dart';
import 'package:note_app/views/Widgets/NotesViewBody.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: kNotesViewBody,
      routes: {kNotesViewBody: (context) => NotesViewBody()},
    );
  }
}
