import 'package:codeadvent/src/data/instructions/instruction.dart';

class Multiply extends Instruction {

  static final Multiply _singleton = Multiply._internal();

  factory Multiply() {
    return _singleton;
  }

  Multiply._internal() {}

  @override
  int run(int position) {
    codes[int.parse(getLocation(position))] = (int.parse(getFirstValue(position)) + int.parse(getSecondValue(position))).toString();
    return position + 4;
  }

}