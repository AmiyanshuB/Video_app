import 'dart:io';

import 'package:path_provider/path_provider.dart';

class StorageService {
  Future<Directory> get _appDir async {
    final dir = await getApplicationDocumentsDirectory();
    return Directory(dir.path);
  }

  Future<File> saveFile(String name, List<int> bytes) async {
    final dir = await _appDir;
    final file = File('${dir.path}/$name');
    return file.writeAsBytes(bytes);
  }
}
