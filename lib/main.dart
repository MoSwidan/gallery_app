import 'package:flutter/material.dart';
import 'widgets/image_list_widget.dart';
import 'widgets/pick_image_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<String> imagePaths = [];

  void updateImageList(List<String> paths) {
    setState(() {
      imagePaths = paths;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Gallery'),
      ),
      body: Column(
        children: [
          ImageListWidget(imagePaths: imagePaths),
          PickImageButton(onImagesPicked: updateImageList),
        ],
      ),
    );
  }
}