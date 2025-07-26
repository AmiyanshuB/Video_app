import 'package:flutter/material.dart';
import '../models/media_item.dart';
import '../screens/viewer_screen.dart';
import 'dart:io';

class GifCard extends StatelessWidget {
  const GifCard({super.key, required this.item});

  final MediaItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.file(
        File(item.filePath),
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(item.filePath.split('/').last),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ViewerScreen(item: item)),
        );
      },
    );
  }
}
