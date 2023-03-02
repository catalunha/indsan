import 'dart:io';

import 'i_rh_data.dart';

class IndIRH {
  final IndIRHData _indIrhData = IndIRHData();
  Future<double?> calculate(String munCode, int year, IOSink? logs) async {
    if (await _indIrhData.existData(munCode, year, logs)) {
      return indIRH(logs);
    } else {
      return null;
    }
  }

  double indIRH(IOSink? logs) {
    return (indIQB(logs) + indIDM(logs)) / 2.0;
  }

  double indIQB(IOSink? logs) {
    double result = _indIrhData.iqb;

    logs?.writeln('IQB | $result');
    return result;
  }

  double indIDM(IOSink? logs) {
    double result = _indIrhData.disp / _indIrhData.dem;
    if (result <= 1.5) {
      result = 0;
    } else if (result > 2) {
      result = 100;
    } else {
      result = 0;
    }
    logs?.writeln('IDM | $result');
    return result;
  }
}
