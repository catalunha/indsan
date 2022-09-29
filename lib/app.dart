import 'dart:io';

import 'package:indsan/ind_store.dart';
import 'package:indsan/indices/i_ab/i_ab.dart';
import 'package:isar/isar.dart';
import 'package:indsan/models/mun_model.dart';

void app() async {
  print('Start app');
  IndStore indStore = IndStore();
  await indStore.onInit();
  await indStore.updateANA();
  await indStore.updateMUN();
  await indStore.updatePOP();
  await indStore.updateSNIS();
  await indStore.updateT();
  Isar isar = Isar.getInstance()!;

  IndIAB indIAB = IndIAB();
  List<MunModel> list = await isar.munModels.where().findAll();

  var pathFileName = 'lib/calcs/iab.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  fileOpen.writeln('MunicipioNome | MunicipioCodigo | Ano | IAB');

  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      // double? iab = await indIAB.calculate(mun.munCode, year, null);
      double? iab = await indIAB.calculate(mun.munCode, year, fileOpen);
      print('${mun.munName} | ${mun.munCode} | $year | ${iab ?? "?"}');
      fileOpen
          .writeln('${mun.munName} | ${mun.munCode} | $year | ${iab ?? "?"}');
    }
  }
  fileOpen.close();

  // +++ teste unitario
  // String munCode = '3100302';
  // int year = 2020;
  // double? iab = await indIAB.calculate(munCode, year);
  // print('Mun.:${munCode} Ano:$year. IAB: ${iab ?? "?"}');
  // --- teste unitario
  isar.close();
}
