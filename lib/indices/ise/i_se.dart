import 'dart:io';

import 'i_se_data.dart';

class IndISE {
  final IndISEData _indIseData = IndISEData();
  Future<double?> calculate(String munCode, int year, IOSink? logs) async {
    if (await _indIseData.existData(munCode, year, logs)) {
      return indISE(logs);
    } else {
      return null;
    }
  }

  double indISE(IOSink? logs) {
    return (indISP(logs) + indIRF(logs) + indIED(logs)) / 3.0;
  }

  double indISP(IOSink? logs) {
    double result = _indIseData.isp;

    logs?.writeln('ISP | $result');
    return result;
  }

  double indIRF(IOSink? logs) {
    double i2s = _indIseData.i2s;
    if (i2s < 56.91) {
      i2s = 100;
    } else if (i2s > 63.43) {
      i2s = 0;
    } else {
      i2s = (1 - (i2s / (63.43 - 56.91))) * 100;
    }
    double irm = _indIseData.irm;
    if (irm < 606.72) {
      irm = 100;
    } else if (irm > 833.30) {
      irm = 0;
    } else {
      irm = (1 - (irm / (833.30 - 606.72))) * 100;
    }
    double result = 0.7 * i2s + 0.3 * irm;

    logs?.writeln('IRF | $result');
    return result;
  }

  double indIED(IOSink? logs) {
    double ine = _indIseData.ine;
    if (ine < 38.78) {
      ine = 100;
    } else if (ine > 44.68) {
      ine = 0;
    } else {
      ine = (1 - (ine / (44.68 - 38.78))) * 100;
    }
    double ie1 = _indIseData.ie1;
    if (ie1 < 5.10) {
      ie1 = 100;
    } else if (ie1 > 7.86) {
      ie1 = 0;
    } else {
      ie1 = (1 - (ie1 / (7.86 - 5.10))) * 100;
    }
    double result = 0.6 * ine + 0.4 * ie1;

    logs?.writeln('IED | $result');
    return result;
  }
}
