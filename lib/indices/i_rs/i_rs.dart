import 'dart:io';

import 'package:indsan/indices/i_rs/i_rs_data.dart';

class IndIRS {
  final IndIRSData _irsData = IndIRSData();
  Future<double?> calculate(String munCode, int year, IOSink? logs) async {
    if (await _irsData.existData(munCode, year, logs)) {
      return indIRS(logs);
    } else {
      return null;
    }
  }

  double indIRS(IOSink? logs) {
    return (indICR(logs) + indIQR(logs) + indISR(logs)) / 3.0;
  }

  double indICR(IOSink? logs) {
    double result = _irsData.IN014_RS;

    logs?.writeln('ICR | $result');
    return result;
  }

  double indIQR(IOSink? logs) {
    double result = _irsData.IQR;
    logs?.writeln('IQR | $result');
    return result;
  }

  double indISR(IOSink? logs) {
    double result = _irsData.ISR;
    if (result <= 0) {
      result = 0;
    } else if (result >= 2) {
      result = 100;
    } else {
      result = ((result - 0)) / (2 - 0) * 100;
    }
    logs?.writeln('ISR | $result');
    return result;
  }
}
