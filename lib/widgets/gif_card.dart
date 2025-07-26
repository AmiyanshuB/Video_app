import 'package:flutter/material.dart';
import '../models/media_item.dart';
import '../screens/viewer_screen.dart';

class GifCard extends StatelessWidget {
  const GifCard({super.key, required this.item});

  final MediaItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.file(item.file, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(item.name),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ViewerScreen(item: item)),
        );
      },
    );
  }
}
