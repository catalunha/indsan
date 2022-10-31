import 'dart:convert';
import 'dart:io';
import 'package:indsan/models/esgoto_model.dart';
import 'package:indsan/models/mun_model.dart';
import 'package:indsan/models/snis_model.dart';
import 'package:indsan/models/t_model.dart';
import 'package:isar/isar.dart';
import 'package:indsan/models/ana_model.dart';

class IndStore {
  late Future<Isar> _isar2;
  IndStore() {
    _isar2 = onInit();
  }
  Future<Isar> onInit() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          ANAModelSchema,
          MunModelSchema,
          SNISModelSchema,
          TModelSchema,
          EsgotoModelSchema,
        ],
        directory: '.',
      );
    } else {
      return await Future.value(Isar.getInstance());
    }
  }

  Future<void> updateANA({bool update = false}) async {
    final isar = await _isar2;
    if (update) {
      print('Removendo todos os dados da collection ANA');
      await isar.writeTxn(() async {
        await isar.aNAModels.clear();
      });
    }
    int count = await isar.aNAModels.count();
    if (count == 0) {
      print('Lendo dados Ana do json para collection ANA');
      String dataFile = 'lib/data/ana_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<ANAModel> list =
          dataJsonObj.map<ANAModel>((e) => ANAModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.aNAModels.put(item);
        }
      });
      count = await isar.aNAModels.count();
    }
    print('ANA collection com: $count');
  }

  Future<void> updateMUN({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection MUN');
      await isar.writeTxn(() async {
        await isar.munModels.clear();
      });
    }
    int count = await isar.munModels.count();
    if (count == 0) {
      print('Lendo dados MUN do json para collection MUN');
      String dataFile = 'lib/data/mun_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<MunModel> list =
          dataJsonObj.map<MunModel>((e) => MunModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.munModels.put(item);
        }
      });
      count = await isar.munModels.count();
    }
    print('MUN collection com: $count');
  }

  Future<void> updateSNIS({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection SNIS');
      await isar.writeTxn(() async {
        await isar.sNISModels.clear();
      });
    }
    int count = await isar.sNISModels.count();
    if (count == 0) {
      print('Lendo dados SNIS do json para collection SNIS');
      String dataFile = 'lib/data/snis_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<SNISModel> list =
          dataJsonObj.map<SNISModel>((e) => SNISModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.sNISModels.put(item);
        }
      });
      count = await isar.sNISModels.count();
    }
    print('SNIS collection com: $count');
  }

  Future<void> updateT({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection T');
      await isar.writeTxn(() async {
        await isar.tModels.clear();
      });
    }
    int count = await isar.tModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection T');
      String dataFile = 'lib/data/t_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<TModel> list =
          dataJsonObj.map<TModel>((e) => TModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.tModels.put(item);
        }
      });
      count = await isar.tModels.count();
    }
    print('T collection com: $count');
  }

  Future<void> updateEsgoto({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Esgoto');
      await isar.writeTxn(() async {
        await isar.esgotoModels.clear();
      });
    }
    int count = await isar.esgotoModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Esgoto');
      String dataFile = 'lib/data/esgoto_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<EsgotoModel> list =
          dataJsonObj.map<EsgotoModel>((e) => EsgotoModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.esgotoModels.put(item);
        }
      });
      count = await isar.esgotoModels.count();
    }
    print('Esgoto collection com: $count');
  }
}
