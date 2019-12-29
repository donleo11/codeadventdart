import 'package:codeadvent/src/days/day.dart';
import 'package:codeadvent/src/utils/constants.dart';
import 'package:codeadvent/src/utils/fileutils.dart';
import 'package:codeadvent/src/utils/intcodeprogram.dart';

class Day2 extends Day {

  var codes = [];

  Day2(String fileName) {
    this.fileName = fileName;
  }

  @override
  void execute() {
    setup();
    var program = IntcodeProgram(codes);
    program.run();
  }

  @override
  Future<void> setup() async {
    codes = await readFileLine('$FILES_PATH$fileName');
    print(codes);
  }

}