import 'package:flutter/material.dart';
import '../models/media_item.dart';

class ViewerScreen extends StatelessWidget {
  const ViewerScreen({super.key, required this.item});

  final MediaItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Center(
        child: Image.file(item.file),
      ),
    );
  }
}
