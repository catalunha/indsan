import 'dart:io';
import 'dart:math';

import 'package:indsan/indices/i_es/i_es_data.dart';

class IndIES {
  final IndIESData _iesData = IndIESData();
  Future<double?> calculate(String munCode, int year, IOSink? logs) async {
    if (await _iesData.existData(munCode, year, logs)) {
      return indIES(logs);
    } else {
      return null;
    }
  }

  double indIES(IOSink? logs) {
    return (indICE(logs) + indITE(logs) + indISE(logs)) / 3.0;
  }

  double indICE(IOSink? logs) {
    double POP = _iesData.POP;
    double result = _iesData.IN024_AE;
    logs?.writeln('_iesData.POP | ${_iesData.POP}');
    logs?.writeln('_iesData.IN024_AE | ${_iesData.IN024_AE}');

    if (POP < 5000) {
      if (result < 50.0) {
        result = 0;
      } else if (result < 85.0) {
        //mesmo valor de IN024_AE
      } else {
        result = 100;
      }
    } else if (POP < 20000) {
      if (result < 55.0) {
        result = 0;
      } else if (result < 85.0) {
        //mesmo valor de IN024_AE
      } else {
        result = 100;
      }
    } else {
      throw Exception('Valor de POP fora do limite de 20000');
    }

    logs?.writeln('indICE | $result');
    return result;
  }

  double indITE(IOSink? logs) {
    double IN024AE = _iesData.IN024_AE;
    double ES005 = _iesData.ES005;
    double ES006 = _iesData.ES006;
    double POP = _iesData.POP;
    logs?.writeln('_iesData.IN024_AE | ${_iesData.IN024_AE}');
    logs?.writeln('_iesData.ES005 | ${_iesData.ES005}');
    logs?.writeln('_iesData.ES006 | ${_iesData.ES006}');
    logs?.writeln('_iesData.POP | ${_iesData.POP}');

    double result = (IN024AE) * (ES006 / ES005) * 100;
    if (POP < 5000) {
      if (result < 15.0) {
        result = 0;
      } else if (result < 56.0) {
        //mesmo valor de result
      } else {
        result = 100;
      }
    } else if (POP < 20000) {
      if (result < 16.5) {
        result = 0;
      } else if (result < 63.75) {
        //mesmo valor de result
      } else {
        result = 100;
      }
    } else {
      throw Exception('Valor de POP fora do limite de 20000');
    }

    logs?.writeln('indITE | $result');
    return result;
  }

  double indISE(IOSink? logs) {
    double CT = _iesData.CT;
    double ES005 = _iesData.ES005;

    double t = _iesData.T;
    double POP = _iesData.POP;
    double result = log(CT / ES005) / log(1 + t);
    logs?.writeln('_iesData.CT | ${_iesData.CT}');
    logs?.writeln('_iesData.ES005 | ${_iesData.ES005}');
    logs?.writeln('t | $t');
    logs?.writeln('result | $result');

    if (POP < 50000) {
      if (result <= 0) {
        result = 0;
      } else if (result >= 2) {
        result = 100;
      } else {
        result = ((result - 0)) / (2 - 0) * 100;
      }
    } else {
      throw Exception('Valor de POP fora do limite de 50000');
    }

    logs?.writeln('indISE | $result');
    return result;
  }
}
