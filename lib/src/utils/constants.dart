import 'dart:io';

import 'package:codeadvent/src/data/instructions/add.dart';

String path = Directory.current.path;
String FILES_PATH = '$path\\lib\\src\\files\\';

const String ADD = '01';
const String MULTIPLY = '02';
const String INPUT = '03';
const String OUTPUT = '04';
const String JUMP_TRUE = '05';
const String JUMP_FALSE = '06';
const String LESS_THAN =  '07';
const String EQUALS = '08';
const String EXIT = '09';

const Map<String, String> operations = {ADD: Add(), }

const String POSITION_MODE = '0';
const String IMMEDIATE_MODE = '1';

