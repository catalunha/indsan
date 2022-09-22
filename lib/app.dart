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
  for (var mun in list) {
    // for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
    for (var year in [2020]) {
      double? iab = await indIAB.calculate(mun.munCode, year);
      print('Mun.:${mun.munCode} Ano:$year. IAB: ${iab ?? "?"}');
    }
  }

  isar.close();
}
