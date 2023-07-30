import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class FileUtils {
  static Future<bool> storagePermissionGranted() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
      if (!status.isGranted) {
        return false;
      }
    }
    return true;
  }

  ///If [to] identifies an existing file, that file is removed first<br>
  ///If [to] identifies an existing directory,
  ///the operation fails and the future completes with an exception.
  Future<File?> copy(String from, String to) async {
    return File(from).copy(to);
  }

  static Future<FileSystemEntity?> delete(String path) async {
    final output = File(
      Uri.encodeFull(path),
    );
    if (!output.existsSync()) return null;
    return output.delete();
  }

  static Future<String> pathToDownloadsWith(String path) async {
    final dir = await _getDownloadsDir();
    return p.join(dir, path);
  }

  static Future<String> pathToTempWith(String path) async {
    final dir = await getTemporaryDirectory();
    return p.join(dir.path, path);
  }

  static Future<String> pathToDocsWith(String path) async {
    final dir = await getApplicationDocumentsDirectory();
    final encoded = Uri.encodeFull(
      p.join(dir.path, path),
    );
    return encoded;
  }

  static Future<String> asStringFrom(String path) {
    return File(path).readAsString();
  }

  static Future<File> saveAsBytes(List<int> bytes, String path) async {
    final output = File(
      Uri.encodeFull(path),
    );
    await output.create(recursive: true);
    await output.writeAsBytes(
      bytes,
      mode: FileMode.writeOnly,
    );
    return output;
  }

  static Future<File> saveAsString(String text, String path) async {
    final output = File(
      Uri.encodeFull(path),
    );
    await output.create(recursive: true);
    await output.writeAsString(
      text,
      mode: FileMode.writeOnly,
    );
    return output;
  }

  static Future<String> _getDownloadsDir() async {
    final directory = Platform.isIOS
        ? await getApplicationDocumentsDirectory()
        : Directory(
            '/storage/emulated/0/Download/',
          );
    return directory.path;
  }

  static Stream<FileSystemEntity> readDir(String path) {
    final dir = Directory.fromUri(Uri.parse(path));
    return dir.list();
  }

  static bool dirExists(String path) {
    final dir = Directory.fromUri(Uri.parse(path));
    return dir.existsSync();
  }
}
