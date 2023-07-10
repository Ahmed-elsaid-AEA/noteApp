import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNoteITem extends StatelessWidget {
  CustomNoteITem({
    super.key,
    required this.noteDate,
    required this.noteTitle,
    required this.noteText,
    required this.onTap,
  });

  String? noteTitle;
  String? noteText;
  String? noteDate;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xfff7cd72), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  noteTitle!,
                  style: TextStyle(
                  fontFamily: 'Motken',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  noteText!,
                  style: TextStyle(color: Colors.black,fontFamily: 'Motken'),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(

                noteDate!,
                style: TextStyle(fontSize: 16, color: Colors.grey[800],fontFamily: 'Motken'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
