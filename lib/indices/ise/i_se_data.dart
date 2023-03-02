// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:indsan/models/ise_model.dart';
import 'package:isar/isar.dart';

class IndISEData {
  Future<bool> existData(String munCode, int year, IOSink? logs) async {
    bool result = true;
    Isar isar = Isar.getInstance()!;
    IseModel? iseModel = await isar.iseModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();

    // print('+++ Analisando falta de dados');

    List<String> varstoCalcISP = ['isp'];
    List<String> varstoCalcIRF = ['i2s', 'irm'];
    List<String> varstoCalcIED = ['ine', 'ie1'];
    List<String> varstoCalcs = [
      ...varstoCalcISP,
      ...varstoCalcIRF,
      ...varstoCalcIED,
    ];
    List<String> faltaDados = [];
    if (iseModel != null) {
      if (varstoCalcs.contains('isp')) {
        if (iseModel.isp != null) {
          isp = iseModel.isp!;
        } else {
          faltaDados.add('iseModel.isp');
          result = false;
        }
      }
      if (varstoCalcs.contains('i2s')) {
        if (iseModel.i2s != null) {
          i2s = iseModel.i2s!;
        } else {
          faltaDados.add('iseModel.i2s');
          result = false;
        }
      }
      if (varstoCalcs.contains('irm')) {
        if (iseModel.irm != null) {
          irm = iseModel.irm!;
        } else {
          faltaDados.add('iseModel.irm');
          result = false;
        }
      }
      if (varstoCalcs.contains('ine')) {
        if (iseModel.ine != null) {
          ine = iseModel.ine!;
        } else {
          faltaDados.add('iseModel.ine');
          result = false;
        }
      }
      if (varstoCalcs.contains('ie1')) {
        if (iseModel.ie1 != null) {
          ie1 = iseModel.ie1!;
        } else {
          faltaDados.add('iseModel.ie1');
          result = false;
        }
      }
    } else {
      faltaDados.add('iseModel');
      result = false;
    }

    if (faltaDados.isNotEmpty) {
      print('--- Faltam estes dados');
      print(faltaDados);
      if (logs != null) {
        logs.writeln('Erros | $munCode | $year | $faltaDados');
      }
    }
    return result;
  }

  // SNIS
  double isp = 0;
  double i2s = 0;
  double irm = 0;
  double ine = 0;
  double ie1 = 0;
}
