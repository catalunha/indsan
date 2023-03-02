// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:indsan/models/irh_model.dart';
import 'package:isar/isar.dart';

class IndIRHData {
  Future<bool> existData(String munCode, int year, IOSink? logs) async {
    bool result = true;
    Isar isar = Isar.getInstance()!;
    IrhModel? irhModel = await isar.irhModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();

    // print('+++ Analisando falta de dados');

    List<String> varstoCalcIQB = ['iqb'];
    List<String> varstoCalcIDD = ['disp', 'dem'];
    List<String> varstoCalcs = [
      ...varstoCalcIQB,
      ...varstoCalcIDD,
    ];
    List<String> faltaDados = [];
    if (irhModel != null) {
      if (varstoCalcs.contains('iqb')) {
        if (irhModel.iqb != null) {
          iqb = irhModel.iqb!;
        } else {
          faltaDados.add('irhModel.iqb');
          result = false;
        }
      }
      if (varstoCalcs.contains('disp')) {
        if (irhModel.disp != null) {
          disp = irhModel.disp!;
        } else {
          faltaDados.add('irhModel.disp');
          result = false;
        }
      }
      if (varstoCalcs.contains('dem')) {
        if (irhModel.dem != null) {
          dem = irhModel.dem!;
        } else {
          faltaDados.add('irhModel.dem');
          result = false;
        }
      }
    } else {
      faltaDados.add('irhModel');
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
  double iqb = 0;
  double disp = 0;
  double dem = 0;
}
