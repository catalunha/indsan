import 'dart:io';

import 'package:indsan/models/ana_model.dart';
import 'package:indsan/models/snis_model.dart';
import 'package:indsan/models/t_model.dart';
import 'package:isar/isar.dart';

class IndIESData {
  Future<bool> existData(String munCode, int year, IOSink? logs) async {
    bool result = true;
    Isar isar = Isar.getInstance()!;
    SNISModel? snisModel = await isar.sNISModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();

    // PopModel? popModel =
    //     await isar.popModels.filter().munCodeEqualTo(munCode).findFirst();

    TModel? tModel =
        await isar.tModels.filter().munCodeEqualTo(munCode).findFirst();

    ANAModel? anaModel =
        await isar.aNAModels.filter().munCodeEqualTo(munCode).findFirst();

    // print('+++ Analisando falta de dados');

    List<String> varstoCalcICE = ['IN024_AE', 'POP'];
    List<String> varstoCalcITE = ['IN024_AE', 'ES005', 'ES006', 'POP'];
    List<String> varstoCalcISE = [
      'CT',
      'ES005',
      'T',
    ];
    List<String> varstoCalcs = [
      ...varstoCalcICE,
      // ...varstoCalcITE,
      // ...varstoCalcISE,
    ];

    List<String> faltaDados = [];
    if (snisModel != null) {
      if (varstoCalcs.contains('IN024_AE')) {
        if (snisModel.IN024_AE != null) {
          IN024_AE = snisModel.IN024_AE!;
        } else {
          faltaDados.add('snisModel.IN024_AE');
          result = false;
        }
      }
      if (varstoCalcs.contains('POP')) {
        if (snisModel.POP != null) {
          POP = snisModel.POP!;
        } else {
          faltaDados.add('snisModel.POP');
          result = false;
        }
      }
      if (varstoCalcs.contains('ES005')) {
        if (snisModel.ES005 != null) {
          ES005 = snisModel.ES005!;
        } else {
          faltaDados.add('snisModel.ES005');
          result = false;
        }
      }
      if (varstoCalcs.contains('ES006')) {
        if (snisModel.ES006 != null) {
          ES006 = snisModel.ES006!;
        } else {
          faltaDados.add('snisModel.ES006');
          result = false;
        }
      }
    } else {
      faltaDados.add('snisModel');
      result = false;
    }
    if (tModel != null) {
      if (varstoCalcs.contains('T')) {
        if (year == 2015) {
          if (tModel.y2015 != null) {
            T = tModel.y2015!;
          } else {
            faltaDados.add('tModel.y2015');
            result = false;
          }
        } else if (year == 2016) {
          if (tModel.y2016 != null) {
            T = tModel.y2016!;
          } else {
            faltaDados.add('tModel.y2016');
            result = false;
          }
        } else if (year == 2017) {
          if (tModel.y2017 != null) {
            T = tModel.y2017!;
          } else {
            faltaDados.add('tModel.y2017');
            result = false;
          }
        } else if (year == 2018) {
          if (tModel.y2018 != null) {
            T = tModel.y2018!;
          } else {
            faltaDados.add('tModel.y2018');
            result = false;
          }
        } else if (year == 2019) {
          if (tModel.y2019 != null) {
            T = tModel.y2019!;
          } else {
            faltaDados.add('tModel.y2019');
            result = false;
          }
        } else if (year == 2020) {
          if (tModel.y2020 != null) {
            T = tModel.y2020!;
          } else {
            faltaDados.add('tModel.y2020');
            result = false;
          }
        } else {
          faltaDados.add('tModel.y????'); //Ano fora da faixa de dados
          result = false;
        }
      }
    } else {
      faltaDados.add('tModel');
      result = false;
    }
    if (anaModel != null) {
    } else {
      faltaDados.add('anaModel');
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

  //SNIS
  double IN024_AE = 0;
  double POP = 0;
  double ES005 = 0;
  double ES006 = 0;
  //T
  double T = 0;
  //Ana

}
