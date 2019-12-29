import 'package:codeadvent/src/data/instructions/instruction.dart';
import 'package:codeadvent/src/data/opcode.dart';

class Add extends Instruction {

  static final Add _singleton = Add._internal();

  factory Add() {
    return _singleton;
  }

  Add._internal() {}

  @override
  int run(int position) {
    codes[int.parse(getLocation(position))] = (int.parse(getFirstValue(position)) + int.parse(getSecondValue(position))).toString();
    return position + 4;
  }

}