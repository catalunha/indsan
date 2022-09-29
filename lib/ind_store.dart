import 'dart:convert';
import 'dart:io';
import 'package:indsan/models/mun_model.dart';
import 'package:indsan/models/pop_model.dart';
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
        PopModelSchema,
        SNISModelSchema,
        TModelSchema
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
      String dataFile = '/home/catalunha/apps/indsan/lib/data/ana_mg.json';
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
      String dataFile = '/home/catalunha/apps/indsan/lib/data/mun_mg.json';
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

  Future<void> updatePOP({bool update = false}) async {
    if (update) {
      print('Removendo todos os dados da collection POP');
      await _isar.writeTxn(() async {
        await _isar.popModels.clear();
      });
    }
    int count = await _isar.popModels.count();
    if (count == 0) {
      print('Lendo dados POP do json para collection POP');
      String dataFile = '/home/catalunha/apps/indsan/lib/data/pop_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<PopModel> list =
          dataJsonObj.map<PopModel>((e) => PopModel.fromMap(e)).toList();

      await _isar.writeTxn(() async {
        for (var item in list) {
          _isar.popModels.put(item);
        }
      });
      count = await _isar.popModels.count();
    }
    print('POP collection com: $count');
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
      String dataFile = '/home/catalunha/apps/indsan/lib/data/snis_mg.json';
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
      print('Lendo dados T do json para collection T');
      String dataFile = '/home/catalunha/apps/indsan/lib/data/t_mg.json';
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
}
