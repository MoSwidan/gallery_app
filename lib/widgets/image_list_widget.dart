import 'package:flutter/material.dart';
import 'dart:io'; 

class ImageListWidget extends StatelessWidget {
  final List<String> imagePaths;

  ImageListWidget({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12), 
              child: SizedBox(
                height: 250, 
                child: Image.file(
                  File(imagePaths[index]),
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}