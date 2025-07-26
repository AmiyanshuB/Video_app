import 'package:dio/dio.dart';
import '../models/media_item.dart';

class Downloader {
  final Dio _dio = Dio();

  Future<MediaItem> download(String url) async {
    // TODO: Implement download logic
    throw UnimplementedError();
  }
}
