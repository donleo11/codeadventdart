import 'dart:io';

Future<List<String>> readFileLines(String fileName) async {
  return await File(fileName).readAsLines();
}

Future<List<String>> readFileLine(String fileName) async {
  return (await File(fileName).readAsString()).split(',');
}