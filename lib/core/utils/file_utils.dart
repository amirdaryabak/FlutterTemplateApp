import 'package:dio/dio.dart';

class FileUtils {
  static final FileUtils _utils = FileUtils._internal();

  factory FileUtils() {
    return _utils;
  }

  static MultipartFile? getMultipartFileFromPath({required String path, fileName = 'image'}) {
    try {
      return MultipartFile.fromFileSync(path, filename: fileName);
    } catch(e) {
      return null;
    }
  }

  FileUtils._internal();
}