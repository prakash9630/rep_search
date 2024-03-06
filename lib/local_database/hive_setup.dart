import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'hive_const.dart';


class HiveSetup {
  HiveSetup._();
  static Future get initHive => _initHive();
  static Future _initHive() async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();

    Hive
      .init(appDocumentDir.path);
  }
}

Future<void> clearHive() async {
  await Hive.deleteBoxFromDisk(hive_cache_box);
  debugPrint('Local Database Cleared');
}

Future<LazyBox> openBox(String name) async {
  return Hive.isBoxOpen(name)
      ? Hive.lazyBox(name)
      : await Hive.openLazyBox(name);
}
