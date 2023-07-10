import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/CustomAppBar.dart';
import 'package:note_app/views/Widgets/CustomNoteITem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        
      },child: Icon(Icons.add),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 40,),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => CustomNoteITem(
                      noteDate: DateTime.now().toString().substring(0,11),
                      noteText: 'text',
                      noteTitle: 'thitle',
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 20),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
