import 'dart:convert';
import 'dart:io';
import 'package:indsan/models/esgoto_model.dart';
import 'package:indsan/models/mun_model.dart';
import 'package:indsan/models/snis_model.dart';
import 'package:indsan/models/t_model.dart';
import 'package:isar/isar.dart';
import 'package:indsan/models/ana_model.dart';

class IndStore {
  late Isar _isar;
  Future<void> onInit() async {
    _isar = await Isar.open(
      [
        ANAModelSchema,
        MunModelSchema,
        SNISModelSchema,
        TModelSchema,
        EsgotoModelSchema,
      ],
      directory: '.',
    );
  }

  Future<void> updateANA({bool update = false}) async {
    if (update) {
      print('Removendo todos os dados da collection ANA');
      await _isar.writeTxn(() async {
        await _isar.aNAModels.clear();
      });
    }
    int count = await _isar.aNAModels.count();
    if (count == 0) {
      print('Lendo dados Ana do json para collection ANA');
      String dataFile = 'lib/data/ana_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<ANAModel> list =
          dataJsonObj.map<ANAModel>((e) => ANAModel.fromMap(e)).toList();

      await _isar.writeTxn(() async {
        for (var item in list) {
          _isar.aNAModels.put(item);
        }
      });
      count = await _isar.aNAModels.count();
    }
    print('ANA collection com: $count');
  }

  Future<void> updateMUN({bool update = false}) async {
    if (update) {
      print('Removendo todos os dados da collection MUN');
      await _isar.writeTxn(() async {
        await _isar.munModels.clear();
      });
    }
    int count = await _isar.munModels.count();
    if (count == 0) {
      print('Lendo dados MUN do json para collection MUN');
      String dataFile = 'lib/data/mun_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<MunModel> list =
          dataJsonObj.map<MunModel>((e) => MunModel.fromMap(e)).toList();

      await _isar.writeTxn(() async {
        for (var item in list) {
          _isar.munModels.put(item);
        }
      });
      count = await _isar.munModels.count();
    }
    print('MUN collection com: $count');
  }

  Future<void> updateSNIS({bool update = false}) async {
    if (update) {
      print('Removendo todos os dados da collection SNIS');
      await _isar.writeTxn(() async {
        await _isar.sNISModels.clear();
      });
    }
    int count = await _isar.sNISModels.count();
    if (count == 0) {
      print('Lendo dados SNIS do json para collection SNIS');
      String dataFile = 'lib/data/snis_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<SNISModel> list =
          dataJsonObj.map<SNISModel>((e) => SNISModel.fromMap(e)).toList();

      await _isar.writeTxn(() async {
        for (var item in list) {
          _isar.sNISModels.put(item);
        }
      });
      count = await _isar.sNISModels.count();
    }
    print('SNIS collection com: $count');
  }

  Future<void> updateT({bool update = false}) async {
    if (update) {
      print('Removendo todos os dados da collection T');
      await _isar.writeTxn(() async {
        await _isar.tModels.clear();
      });
    }
    int count = await _isar.tModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection T');
      String dataFile = 'lib/data/t_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<TModel> list =
          dataJsonObj.map<TModel>((e) => TModel.fromMap(e)).toList();

      await _isar.writeTxn(() async {
        for (var item in list) {
          _isar.tModels.put(item);
        }
      });
      count = await _isar.tModels.count();
    }
    print('T collection com: $count');
  }

  Future<void> updateEsgoto({bool update = false}) async {
    if (update) {
      print('Removendo todos os dados da collection Esgoto');
      await _isar.writeTxn(() async {
        await _isar.esgotoModels.clear();
      });
    }
    int count = await _isar.esgotoModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Esgoto');
      String dataFile = 'lib/data/esgoto_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<EsgotoModel> list =
          dataJsonObj.map<EsgotoModel>((e) => EsgotoModel.fromMap(e)).toList();

      await _isar.writeTxn(() async {
        for (var item in list) {
          _isar.esgotoModels.put(item);
        }
      });
      count = await _isar.esgotoModels.count();
    }
    print('Esgoto collection com: $count');
  }
}
