import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/EditNoteView.dart';
import 'package:note_app/views/Widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/Widgets/CustomAppBar.dart';
import 'package:note_app/views/Widgets/CustomNoteITem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              CustomAppBar(title: 'Notes',icon: Icons.search,),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => CustomNoteITem(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView(),));
                          },
                          noteDate: DateTime.now().toString().substring(0, 11),
                          noteText: 'text',
                          noteTitle: 'titel',
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
