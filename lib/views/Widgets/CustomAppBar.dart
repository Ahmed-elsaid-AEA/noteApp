import 'package:flutter/cupertino.dart';
import 'package:note_app/views/Widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const Text('Notes', style: TextStyle(fontSize: 28)),
        CustomSearchIcon()
      ],
    );
  }
}
