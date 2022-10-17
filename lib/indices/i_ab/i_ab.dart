// ignore_for_file: non_constant_identifier_names
import 'dart:io';
import 'dart:math';

import 'package:indsan/indices/i_ab/i_ab_data.dart';

class IndIAB {
  final IndIABData _iabData = IndIABData();
  Future<double?> calculate(String munCode, int year, IOSink? logs) async {
    if (await _iabData.existData(munCode, year, logs)) {
      // return indISA(logs);
      // return indIQA(logs);
      // return indICA(logs);
      return indIAB(logs);
    } else {
      return null;
    }
  }

  double indIAB(IOSink? logs) {
    return (indICA(logs) + indIQA(logs) + indISA(logs)) / 3.0;
  }

  double indICA(IOSink? logs) {
    double result = _iabData.IN023_AE;
    logs?.writeln('indICA | $result');
    return result;
  }

  double indIQA(IOSink? logs) {
    double K = (_iabData.QD006 + _iabData.QD008 + _iabData.QD026) /
        (_iabData.QD019 + _iabData.QD020 + _iabData.QD028);
    if (K < 1) {
      K = 1;
    }
    // logs?.writeln('K | $K');

    double NAA = (_iabData.QD006 + _iabData.QD008 + _iabData.QD026) -
        (_iabData.QD007 + _iabData.QD009 + _iabData.QD027);
    // logs?.writeln('NAA | $NAA');

    double NAR = _iabData.QD006 + _iabData.QD008 + _iabData.QD026;
    // logs?.writeln('NAR | $NAR');
    double result = K * (NAA / NAR) * 100;
    logs?.writeln('indIQA | $result');
    return K * (NAA / NAR) * 100;
  }

  double indISA(IOSink? logs) {
    double part1 = _iabData.AG012 * 1000;
    //logs?.writeln('part1: $part1');
    double part2a = 0.365;
    //logs?.writeln('part2a: $part2a');
    double part2b = _iabData.POP * _iabData.IN022_AE;
    //logs?.writeln('part2b: $part2b');
    double part2c = 1 + (_iabData.IN049_AE) / 100;
    //logs?.writeln('part2c: $part2c');
    double part2d = _iabData.IN049_5 / _iabData.IN049_AE;
    //logs?.writeln('part2d: $part2d');
    double part3 = 1 + _iabData.T;
    //logs?.writeln('part3: $part3');

    double n = log((part1) / (part2a * part2b * part2c * part2d)) / log(part3);
    // Fonte Subterrânea = 0
    // Fonte Superficial = 1
    // Fonte Integrado = 2
    //print('n: $n');
    if (n <= 0 || n.isInfinite || n.isNaN || n.isNegative) {
      n = 0;
    }
    if (_iabData.font == 0) {
      if (n >= 2) {
        n = 100;
      } else {
        n = 100 / 2 * n;
      }
    } else if (_iabData.font == 1) {
      if (n >= 2) {
        n = 100;
      } else {
        n = 100 / 3 * n;
      }
    } else {
      if (n >= 5) {
        n = 100;
      } else {
        n = 100 / 5 * n;
      }
    }
    double result = n;
    logs?.writeln('indISA | $result');
    return result;
  }
}
