import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  File? _image;

  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummaryCard(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 32,
                      ),
                      Text('Add New Task', style: Theme.of(context).textTheme.headline6),
                      const SizedBox(
                        height: 16,
                      ),
                      _image == null
                          ? Text('No image selected.')
                          : Image.file(
                        _image!,
                        height: 100,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton(
                        onPressed: _getImage,
                        child: Text('Upload Image',style: TextStyle(color: Colors.blue),),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: 'Short Description'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        maxLines: 7,
                        decoration: InputDecoration(hintText: 'Details Description'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_circle_right_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
