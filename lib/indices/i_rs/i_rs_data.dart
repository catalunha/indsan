// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:indsan/models/residuos_model.dart';
import 'package:indsan/models/snis_model.dart';
import 'package:isar/isar.dart';

class IndIRSData {
  Future<bool> existData(String munCode, int year, IOSink? logs) async {
    bool result = true;
    Isar isar = Isar.getInstance()!;
    SNISModel? snisModel = await isar.sNISModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();
    ResiduosModel? residuosModel = await isar.residuosModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();
    // EsgotoModel? esgotoModel = await isar.esgotoModels
    //     .filter()
    //     .munCodeEqualTo(munCode)
    //     .yearEqualTo(year)
    //     .findFirst();
    // PopModel? popModel =
    //     await isar.popModels.filter().munCodeEqualTo(munCode).findFirst();

    // TModel? tModel =
    //     await isar.tModels.filter().munCodeEqualTo(munCode).findFirst();

    // EsgotoModel? esgotoModel =
    //     await isar.esgotoModels.filter().munCodeEqualTo(munCode).findFirst();

    // print('+++ Analisando falta de dados');

    List<String> varstoCalcICR = ['IN014_RS'];
    List<String> varstoCalcIQR = ['IQR'];
    List<String> varstoCalcISR = ['ISR'];
    List<String> varstoCalcs = [
      ...varstoCalcICR,
      ...varstoCalcIQR,
      ...varstoCalcISR,
    ];
    List<String> faltaDados = [];
    if (snisModel != null) {
      if (varstoCalcs.contains('IN014_RS')) {
        if (snisModel.IN014_RS != null) {
          IN014_RS = snisModel.IN014_RS!;
        } else {
          faltaDados.add('snisModel.IN014_RS');
          result = false;
        }
      }
    } else {
      faltaDados.add('snisModel');
      result = false;
    }
    if (residuosModel != null) {
      if (varstoCalcs.contains('IQR')) {
        if (residuosModel.IQR != null) {
          IQR = residuosModel.IQR!;
        } else {
          faltaDados.add('residuosModel.IQR');
          result = false;
        }
      }
      if (varstoCalcs.contains('ISR')) {
        if (residuosModel.ISR != null) {
          ISR = residuosModel.ISR!;
        } else {
          faltaDados.add('residuosModel.ISR');
          result = false;
        }
      }
    } else {
      faltaDados.add('residuosModel');
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
  double IN014_RS = 0;
  // Residuos
  double IQR = 0;
  double ISR = 0;
}
