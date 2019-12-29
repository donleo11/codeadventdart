import 'package:codeadvent/src/data/opcode.dart';
import 'package:codeadvent/src/utils/constants.dart';

abstract class Instruction {
  List<String> _codes;
  Opcode _opcode;

  int run(int position);

  List<String> get codes => _codes;

  set codes(List<String> value) {
    _codes = value;
  }

  Opcode get opcode => _opcode;

  set opcode(Opcode value) {
    _opcode = value;
  }

  String getLocation(int position) {
    return codes[position + 3];
  }

  String getFirstValue(int position) {
    if (opcode.getFirstMode() == POSITION_MODE) {
      return codes[int.parse(codes[position + 1])];
    } else {
      return codes[position + 1];
    }
  }

  String getSecondValue(int position) {
    if (opcode.getFirstMode() == POSITION_MODE) {
      return codes[int.parse(codes[position + 2])];
    } else {
      return codes[position + 2];
    }
  }
}