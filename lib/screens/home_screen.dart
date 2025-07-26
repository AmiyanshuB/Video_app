import 'package:flutter/material.dart';
import '../widgets/gif_card.dart';
import '../models/media_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <MediaItem>[]; // Placeholder for media items
    return Scaffold(
      appBar: AppBar(title: const Text('My GIFs')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GifCard(item: items[index]);
        },
      ),
    );
  }
}
