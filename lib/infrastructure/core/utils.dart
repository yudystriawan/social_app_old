import 'dart:io';

import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';

class Utils {
  static Future<File> compressFileImage(File fileImage) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    final imageFile = decodeImage(fileImage.readAsBytesSync());
    final millis = DateTime.now().microsecondsSinceEpoch;
    final compressedFile = File('$path/img_$millis.jpg')
      ..writeAsBytesSync(encodeJpg(
        imageFile,
        quality: 80,
      ));

    return compressedFile;
  }
}
