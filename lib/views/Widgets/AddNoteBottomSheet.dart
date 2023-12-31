import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/addNewCubit/add_note_cubit.dart';
import 'package:note_app/views/Widgets/CustomFormTextField.dart';
import 'package:note_app/views/Widgets/CustomMaterialButton.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteLoading) isLoading = true;
            if (state is AddNoteSuccess) Navigator.pop(context);
            if (state is AddNoteFailure) print('failed');
          },
          builder: (context, state) {
            return ModalProgressHUD(
              child:const AddNoteForm(),
              inAsyncCall: isLoading,
            );
          },
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> keyForm = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: keyForm,
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
            onSaved: (value) => title = value,
            validator: (value) {
              if (value!.isEmpty) return "Should Enter Title";
            },
            hintText: 'Enter Your Title ',
            labelText: 'Note',
            prefixIcon: Icons.title,
            maxline: 2,
            cursorColor: Colors.blue,
            labelColor: Colors.blue,
          ),
          SizedBox(height: 20),
          CustomFormTextField(
            onSaved: (value) => content = value,
            validator: (value) {
              if (value!.isEmpty) return "Should Enter Content";
            },
            hintText: 'Enter Your Content ',
            labelText: 'Content',
            prefixIcon: Icons.note,
            maxline: 5,
            cursorColor: Colors.blue,
            labelColor: Colors.blue,
          ),
          SizedBox(height: 20),
          CustomMaterialButton(
              onPressed: () {
                setState(() {});
                if (keyForm.currentState!.validate()) {
                  keyForm.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              textButton: "Add"),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
