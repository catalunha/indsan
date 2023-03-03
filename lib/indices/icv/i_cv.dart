import 'dart:io';

import 'package:indsan/indices/icv/i_cv_data.dart';

class IndICV {
  final IndICVData _icvData = IndICVData();
  Future<double?> calculate(String munCode, int year, IOSink? logs) async {
    if (await _icvData.existData(munCode, year, logs)) {
      return indICV(logs);
    } else {
      return null;
    }
  }

  double indICV(IOSink? logs) {
    return ((indIVD(logs) + indIVE(logs)) / 2.0 + indIVL(logs)) / 2.0;
  }

  double indIVD(IOSink? logs) {
    double result = _icvData.dengue;
    if (_icvData.year == 2015) {
      if (result <= 0.39) {
        result = 100;
      } else if (result >= 5.45) {
        result = 0;
      } else {
        result = ((5.45 - result) / (5.45 - 0.39)) * 100;
      }
    } else if (_icvData.year == 2016) {
      if (result <= 0.76) {
        result = 100;
      } else if (result >= 11.03) {
        result = 0;
      } else {
        result = ((11.03 - result) / (11.03 - 0.76)) * 100;
      }
    } else if (_icvData.year == 2017) {
      if (result <= 0.23) {
        result = 100;
      } else if (result >= 1.39) {
        result = 0;
      } else {
        result = ((1.39 - result) / (1.39 - 0.23)) * 100;
      }
    } else if (_icvData.year == 2018) {
      if (result <= 0.21) {
        result = 100;
      } else if (result >= 1.75) {
        result = 0;
      } else {
        result = ((1.75 - result) / (1.75 - 0.21)) * 100;
      }
    } else if (_icvData.year == 2019) {
      if (result <= 0.60) {
        result = 100;
      } else if (result >= 13.97) {
        result = 0;
      } else {
        result = ((13.97 - result) / (13.97 - 0.60)) * 100;
      }
    } else if (_icvData.year == 2020) {
      if (result <= 0.54) {
        result = 100;
      } else if (result >= 6.52) {
        result = 0;
      } else {
        result = ((6.52 - result) / (6.52 - 0.54)) * 100;
      }
    }
    logs?.writeln('IVD | $result');
    return result;
  }

  double indIVE(IOSink? logs) {
    double result = _icvData.esquis;
    if (result == 0) {
      result = 100;
    } else if (result <= 1) {
      result = 50;
    } else if (result < 5) {
      result = 25;
    } else {
      result = 0;
    }
    logs?.writeln('IVE | $result');
    return result;
  }

  double indIVL(IOSink? logs) {
    double result = _icvData.lepto;
    logs?.writeln('IVL | $result');
    return result;
  }
}
