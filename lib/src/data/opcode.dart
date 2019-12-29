
class Opcode {

  String opcode;

  Opcode(String opcode) {
    this.opcode = opcode;
  }

  String getOperator() {
    return opcode.substring(3, 5);
  }

  String getFirstMode() {
    return opcode[2];
  }

  String getSecondMode() {
    return opcode[1];
  }

  String getThirdMode() {
    return opcode[0];
  }


}