import 'dart:io';

import 'package:indsan/ind_store.dart';
import 'package:indsan/indices/i_ab/i_ab.dart';
import 'package:indsan/indices/i_es/i_es.dart';
import 'package:indsan/indices/i_rs/i_rs.dart';
import 'package:indsan/indices/icv/i_cv.dart';
import 'package:isar/isar.dart';
import 'package:indsan/models/mun_model.dart';

import 'indices/irh/i_rh.dart';
import 'indices/ise/i_se.dart';

void app() async {
  print('Start app');
  IndStore indStore = IndStore();
  await indStore.onInit();
  // await indStore.updateANA(update: true);
  // await indStore.updateMUN(update: true);
  // await indStore.updateSNIS(update: true);
  // await indStore.updateT(update: true);
  // await indStore.updateEsgoto(update: true);
  // await indStore.updateResiduos(update: true);
  // await indStore.updateDengue(update: true);
  // await indStore.updateLepto(update: true);
  // await indStore.updateEsquis(update: true);
  // await indStore.updateIrh(update: true);
  // await indStore.updateIse(update: true);
  Isar isar = Isar.getInstance()!;

  List<MunModel> munList = await isar.munModels.where().findAll();
  List<int> yearList = [2015, 2016, 2017, 2018, 2019, 2020];

  // List<MunModel> munList = [
  //   MunModel(munCode: '3100302', munName: '', munUF: '')
  // ];
  // List<int> yearList = [2015];

  indIAB(munList, yearList, true);
  indIES(munList, yearList, true);
  indIRS(munList, yearList, true);
  indICV(munList, yearList, true);
  indIRH(munList, yearList, true);
  indISE(munList, yearList, true);
}

indISE(List<MunModel> munList, List<int> yearList,
    [bool allCalcs = false]) async {
  print('Calculando indISE');

  IndISE indISE = IndISE();
  var pathFileName = 'lib/calcs/ise.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | ISE');
  for (var mun in munList) {
    for (var year in yearList) {
      double? result;
      if (allCalcs) {
        result = await indISE.calculate(mun.munCode, year, fileOpen);
      } else {
        result = await indISE.calculate(mun.munCode, year, null);
      }
      fileOpen.writeln(
          '${mun.munName} | ${mun.munCode} | $year | ${result ?? "?"}');
    }
  }

  fileOpen.close();
}

indIRH(List<MunModel> munList, List<int> yearList,
    [bool allCalcs = false]) async {
  print('Calculando indIRH');

  IndIRH indIRH = IndIRH();

  var pathFileName = 'lib/calcs/irh.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IRH');

  for (var mun in munList) {
    for (var year in yearList) {
      double? result;
      if (allCalcs) {
        result = await indIRH.calculate(mun.munCode, year, fileOpen);
      } else {
        result = await indIRH.calculate(mun.munCode, year, null);
      }
      fileOpen.writeln(
          '${mun.munName} | ${mun.munCode} | $year | ${result ?? "?"}');
    }
  }
  fileOpen.close();
}

indICV(List<MunModel> munList, List<int> yearList,
    [bool allCalcs = false]) async {
  print('Calculando indICV');

  IndICV indICV = IndICV();

  var pathFileName = 'lib/calcs/icv.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | ICV');
  for (var mun in munList) {
    for (var year in yearList) {
      double? result;
      if (allCalcs) {
        result = await indICV.calculate(mun.munCode, year, fileOpen);
      } else {
        result = await indICV.calculate(mun.munCode, year, null);
      }
      fileOpen.writeln(
          '${mun.munName} | ${mun.munCode} | $year | ${result ?? "?"}');
    }
  }
  fileOpen.close();
}

indIRS(List<MunModel> munList, List<int> yearList,
    [bool allCalcs = false]) async {
  print('Calculando indIRS');

  IndIRS indIRS = IndIRS();

  var pathFileName = 'lib/calcs/irs.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IRS');
  for (var mun in munList) {
    for (var year in yearList) {
      double? result;
      if (allCalcs) {
        result = await indIRS.calculate(mun.munCode, year, fileOpen);
      } else {
        result = await indIRS.calculate(mun.munCode, year, null);
      }
      fileOpen.writeln(
          '${mun.munName} | ${mun.munCode} | $year | ${result ?? "?"}');
    }
  }
  fileOpen.close();
}

indIES(List<MunModel> munList, List<int> yearList,
    [bool allCalcs = false]) async {
  print('Calculando indIES');
  IndIES indIES = IndIES();

  var pathFileName = 'lib/calcs/ies.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | ICE');
  for (var mun in munList) {
    for (var year in yearList) {
      double? result;
      if (allCalcs) {
        result = await indIES.calculate(mun.munCode, year, fileOpen);
      } else {
        result = await indIES.calculate(mun.munCode, year, null);
      }
      fileOpen.writeln(
          '${mun.munName} | ${mun.munCode} | $year | ${result ?? "?"}');
    }
  }
  fileOpen.close();
}

indIAB(List<MunModel> munList, List<int> yearList,
    [bool allCalcs = false]) async {
  print('Calculando indIAB');
  IndIAB indIAB = IndIAB();

  var pathFileName = 'lib/calcs/iab.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IAB');

  for (var mun in munList) {
    for (var year in yearList) {
      double? result;
      if (allCalcs) {
        result = await indIAB.calculate(mun.munCode, year, fileOpen);
      } else {
        result = await indIAB.calculate(mun.munCode, year, null);
      }
      fileOpen.writeln(
          '${mun.munName} | ${mun.munCode} | $year | ${result ?? "?"}');
    }
  }
  fileOpen.close();
}
