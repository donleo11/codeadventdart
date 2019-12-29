import 'package:codeadvent/src/days/day.dart';
import 'package:codeadvent/src/utils/fileutils.dart';
import 'package:codeadvent/src/utils/constants.dart';

class Day1 extends Day{

  var lines = [];
  var massList = [];

  Day1(String fileName) {
    this.fileName = fileName;
  }

  @override
  Future<void> setup() async {
    lines = await readFileLines('$FILES_PATH$fileName');
    for (var line in lines) {
      massList.add(double.parse(line));
    }
  }

  @override
  Future<void> execute()  async {
    // read file
    await setup();

    // Calculate fuel requirements
    var sumFuelRequirements = 0.0;
    for (var mass in massList) {
      var fuelRequirement = getSumFuelRequirements(mass);
      sumFuelRequirements = sumFuelRequirements + fuelRequirement;
    }
    print(sumFuelRequirements);
  }

  double calculateFuelRequirements(double mass) {
    return (mass / 3).floorToDouble() - 2;
  }

  double getSumFuelRequirements(double mass) {
    var total_fuel = 0.0;
    var temp_fuel = calculateFuelRequirements(mass);
    while (temp_fuel > 0) {
      total_fuel += temp_fuel;
      temp_fuel = calculateFuelRequirements(temp_fuel);
    }
    return total_fuel;

  }
}

