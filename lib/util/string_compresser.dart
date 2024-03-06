import 'package:lzstring/lzstring.dart';

class StringCompress {
  Future<String?> compress({required String data}) async {
    final compressedString = await LZString.compressToUTF16(data);
    return compressedString;
  }

  Future<String?> decompress({required String data}) async {
    final decompressedString = await LZString.decompressFromUTF16(data);
    return decompressedString;
  }
}
