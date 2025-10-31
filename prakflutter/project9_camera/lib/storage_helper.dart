import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class StorageHelper {
  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> saveImage(File imageFile) async {
    try {
      final localPath = await _localPath;
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'image_$timestamp.jpg';
      final newPath = path.join(localPath, fileName);
      
      return await imageFile.copy(newPath);
    } catch (e) {
      throw Exception('Error saving image: $e');
    }
  }

  static Future<List<File>> getSavedImages() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final files = directory
          .listSync()
          .whereType<File>()
          .where((file) => 
              file.path.toLowerCase().endsWith('.jpg') || 
              file.path.toLowerCase().endsWith('.png') ||
              file.path.toLowerCase().endsWith('.jpeg'))
          .toList();
      
      // Sort by modified time (newest first)
      files.sort((a, b) => b
          .lastModifiedSync()
          .compareTo(a.lastModifiedSync()));
      
      return files;
    } catch (e) {
      throw Exception('Error loading images: $e');
    }
  }

  static Future<void> deleteImage(String filePath) async {
    try {
      final file = File(filePath);
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      throw Exception('Error deleting image: $e');
    }
  }

  static Future<void> clearAllImages() async {
    try {
      final images = await getSavedImages();
      for (final image in images) {
        await deleteImage(image.path);
      }
    } catch (e) {
      throw Exception('Error clearing images: $e');
    }
  }
}