// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:indsan/models/dengue_model.dart';
import 'package:indsan/models/esquis_model.dart';
import 'package:indsan/models/lepto_model.dart';
import 'package:isar/isar.dart';

class IndICVData {
  Future<bool> existData(String munCode, int year, IOSink? logs) async {
    this.year = year;
    bool result = true;
    Isar isar = Isar.getInstance()!;
    DengueModel? dengueModel = await isar.dengueModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();
    LeptoModel? leptoModel = await isar.leptoModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();
    EsquisModel? esquisModel = await isar.esquisModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();
    // print('+++ Analisando falta de dados');

    List<String> varstoCalcIVD = ['dengue'];
    List<String> varstoCalcIVE = ['esquis'];
    List<String> varstoCalcIVL = ['lepto'];
    List<String> varstoCalcs = [
      ...varstoCalcIVD,
      ...varstoCalcIVE,
      ...varstoCalcIVL,
    ];
    List<String> faltaDados = [];
    if (dengueModel != null) {
      if (varstoCalcs.contains('dengue')) {
        if (dengueModel.dengue != null) {
          dengue = dengueModel.dengue!;
        } else {
          faltaDados.add('dengueModel.dengue');
          result = false;
        }
      }
    } else {
      faltaDados.add('dengueModel');
      result = false;
    }
    if (leptoModel != null) {
      if (varstoCalcs.contains('lepto')) {
        if (leptoModel.lepto != null) {
          lepto = leptoModel.lepto!;
        } else {
          faltaDados.add('leptoModel.lepto');
          result = false;
        }
      }
    } else {
      faltaDados.add('leptoModel');
      result = false;
    }
    if (esquisModel != null) {
      if (varstoCalcs.contains('esquis')) {
        if (esquisModel.esquis != null) {
          esquis = esquisModel.esquis!;
        } else {
          faltaDados.add('esquisModel.esquis');
          result = false;
        }
      }
    } else {
      faltaDados.add('esquisModel');
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
  int year = 0;
  double dengue = 0;
  double lepto = 0;
  double esquis = 0;
}
