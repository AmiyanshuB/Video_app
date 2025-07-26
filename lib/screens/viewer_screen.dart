import 'package:flutter/material.dart';
import '../models/media_item.dart';
import 'dart:io';

class ViewerScreen extends StatelessWidget {
  const ViewerScreen({super.key, required this.item});

  final MediaItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.filePath.split('/').last)),
      body: Center(
        child: Image.file(File(item.filePath)),
      ),
    );
  }
}
