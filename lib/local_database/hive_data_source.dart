import 'dart:convert';
import '../../util/string_compresser.dart';
import 'hive_const.dart';
import 'hive_setup.dart';

class HiveDataSource {
  final StringCompress _stringCompress = StringCompress();

  Future cacheData(dynamic data, {required String link}) async {
    try {
      String cacheData = jsonEncode(data);
      final hiveBox = await openBox(hive_cache_box);
      final compressedString = await _stringCompress.compress(data: cacheData);
      await hiveBox.put(link, compressedString);
      final result = await getCacheData(link: link);
      return result;
    } catch (e) {
      return null;
    }
  }

  Future getCacheData({required String link}) async {
    try {
      final hiveBox = await openBox(hive_cache_box);
      final result = await hiveBox.get(link);
      final decompressedString = await _stringCompress.decompress(data: result);
      final decodedJson = jsonDecode(decompressedString!);
      return decodedJson;
    } catch (e) {
      return null;
    }
  }
}
