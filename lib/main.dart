import 'package:flutter/material.dart';

import 'package:note_app/Shared/Constant.dart';
import 'package:note_app/SimpleBlocObserver.dart';
import 'package:note_app/cubits/addNewCubit/add_note_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/views/Widgets/NotesViewBody.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  try {
    await Hive.initFlutter();
    Bloc.observer = SimpleBlocObserver();
    await Hive.openBox(kNoteBox);
    //to make hive to make his operation to NoteModelAdaptor
    Hive.registerAdapter(NoteModelAdapter());
    runApp(const NoteApp());
  } catch (ex) {
    print(ex.toString());
  }
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: kNotesViewBody,
        routes: {kNotesViewBody: (context) => NotesViewBody()},
      ),
    );
  }
}
