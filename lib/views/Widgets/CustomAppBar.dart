import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title,required this.icon});

  String? title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(title!, style: TextStyle(fontSize: 28)),
        CustomSearchIcon(icon:icon,)
      ],
    );
  }
}
