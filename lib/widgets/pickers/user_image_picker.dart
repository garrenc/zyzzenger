import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  final Function(File pickedImage) imagePickfn;
  const UserImagePicker({Key? key, required this.imagePickfn})
      : super(key: key);

  @override
  _UserImagePickerState createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  // ignore: prefer_typing_uninitialized_variables
  var _pickedImage;

  void _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedImagePath = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 150,
    );
    final pickedImage = File(pickedImagePath!.path);
    setState(() {
      _pickedImage = pickedImage;
    });
    widget.imagePickfn(pickedImage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage:
              _pickedImage != null ? FileImage(_pickedImage!) : null,
        ),
        TextButton.icon(
            onPressed: _pickImage,
            icon: const Icon(Icons.image),
            label: const Text('выбрать фотку'))
      ],
    );
  }
}
