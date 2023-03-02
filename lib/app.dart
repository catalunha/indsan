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
  // indIAB();
  // indIES();
  // indIRS();
  // indICV();
  // indIRH();
  indISE();
}

indISE() async {
  Isar isar = Isar.getInstance()!;
  IndISE indISE = IndISE();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/ise.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | ISE');
  //+++ calculo de tudo
  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      // double? ies = await indISE.calculate(mun.munCode, year, null);
      double? ies = await indISE.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
    }
  }
  //--- calculo de tudo

  // +++ teste unitario
  // String munCode = '3100302';
  // int year = 2020;
  // double? ies = await indIES.calculate(munCode, year, fileOpen);
  // print('Mun.:$munCode Ano:$year. IES: ${ies ?? "?"}');
  // --- teste unitario

  fileOpen.close();
  isar.close();
}

indIRH() async {
  Isar isar = Isar.getInstance()!;
  IndIRH indIRH = IndIRH();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/irh.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IRH');
  //+++ calculo de tudo
  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      double? ies = await indIRH.calculate(mun.munCode, year, null);
      // double? ies = await indIRH.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
    }
  }
  //--- calculo de tudo

  // +++ teste unitario
  // String munCode = '3100302';
  // int year = 2020;
  // double? ies = await indIES.calculate(munCode, year, fileOpen);
  // print('Mun.:$munCode Ano:$year. IES: ${ies ?? "?"}');
  // --- teste unitario

  fileOpen.close();
  isar.close();
}

indICV() async {
  Isar isar = Isar.getInstance()!;
  IndICV indICV = IndICV();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/icv.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | ICV');
  //+++ calculo de tudo
  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      double? ies = await indICV.calculate(mun.munCode, year, null);
      // double? ies = await indIRS.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
    }
  }
  //--- calculo de tudo

  // +++ teste unitario
  // String munCode = '3100302';
  // int year = 2020;
  // double? ies = await indIES.calculate(munCode, year, fileOpen);
  // print('Mun.:$munCode Ano:$year. IES: ${ies ?? "?"}');
  // --- teste unitario

  fileOpen.close();
  isar.close();
}

indIRS() async {
  Isar isar = Isar.getInstance()!;
  IndIRS indIRS = IndIRS();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/irs.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IRS');
  //+++ calculo de tudo
  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      double? ies = await indIRS.calculate(mun.munCode, year, null);
      // double? ies = await indIRS.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
    }
  }
  //--- calculo de tudo

  // +++ teste unitario
  // String munCode = '3100302';
  // int year = 2020;
  // double? ies = await indIES.calculate(munCode, year, fileOpen);
  // print('Mun.:$munCode Ano:$year. IES: ${ies ?? "?"}');
  // --- teste unitario

  fileOpen.close();
  isar.close();
}

indIES() async {
  Isar isar = Isar.getInstance()!;
  IndIES indIES = IndIES();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/ies.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | ICE');
  //+++ calculo de tudo
  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      double? ies = await indIES.calculate(mun.munCode, year, null);
      // double? ies = await indIES.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${ies ?? "?"}');
    }
  }
  //--- calculo de tudo

  // +++ teste unitario
  // String munCode = '3100302';
  // int year = 2020;
  // double? ies = await indIES.calculate(munCode, year, fileOpen);
  // print('Mun.:$munCode Ano:$year. IES: ${ies ?? "?"}');
  // --- teste unitario

  fileOpen.close();
  isar.close();
}

indIAB() async {
  Isar isar = Isar.getInstance()!;
  // +++ Indicador IAB
  IndIAB indIAB = IndIAB();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/iab.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  //+++ calculo de tudo
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IAB');

  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      double? iab = await indIAB.calculate(mun.munCode, year, null);
      // double? iab = await indIAB.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${iab ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${iab ?? "?"}');
    }
  }
  //--- calculo de tudo

  // +++ teste unitario
  // String munCode = '3144706';
  // int year = 2016;
  // double? iab = await indIAB.calculate(munCode, year, fileOpen);
  // print('Mun.:$munCode Ano:$year. IAB: ${iab ?? "?"}');
  // --- teste unitario
  // +++ Indicador IAB

  // +++ Indicador IES

  // --- Indicador IES

  fileOpen.close();
  isar.close();
}
