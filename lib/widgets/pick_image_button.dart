import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageButton extends StatelessWidget {
  final Function(List<String>) onImagesPicked;

  PickImageButton({required this.onImagesPicked});

  Future<void> _pickImages() async {
    final ImagePicker _picker = ImagePicker();
    final List<XFile>? images = await _picker.pickMultiImage();

    if (images != null) {
      List<String> paths = images.map((image) => image.path).toList();
      onImagesPicked(paths);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: _pickImages,
        child: Text('Pick Image'),
      ),
    );
  }
}