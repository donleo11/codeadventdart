import 'package:codeadvent/src/data/instructions/instruction.dart';
import 'package:codeadvent/src/data/instructions/add.dart';
import 'package:codeadvent/src/data/instructions/multiply.dart';
import 'package:codeadvent/src/data/opcode.dart';
import 'package:codeadvent/src/utils/constants.dart';

class IntcodeProgram {
  Instruction currentInstruction;
  int pointer = 0;
  List<String> codes;
  Map<String, Instruction> operations;

  IntcodeProgram(List<String> codes) {
    this.codes = codes;
    init();
  }

  void init() {
    operations = {ADD: Add(), MULTIPLY: Multiply()};
  }

  void run() {
    while (pointer < codes.length) {
      var currentOpcode = generateOpcode(codes[pointer]);
      Instruction instruction = operations[currentOpcode.getOperator()];
      if (instruction != null) {
        instruction.codes = codes;
        instruction.opcode = currentOpcode;
        pointer = instruction.run(pointer);
      } else {
        break;
      }
    }
  }

  Opcode generateOpcode(String opcode) {
    var missing = 5 - opcode.length;
    return Opcode(('0' * missing) + opcode);
  }

}