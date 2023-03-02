import 'dart:convert';
import 'dart:io';
import 'package:indsan/models/dengue_model.dart';
import 'package:indsan/models/esgoto_model.dart';
import 'package:indsan/models/esquis_model.dart';
import 'package:indsan/models/irh_model.dart';
import 'package:indsan/models/lepto_model.dart';
import 'package:indsan/models/mun_model.dart';
import 'package:indsan/models/residuos_model.dart';
import 'package:indsan/models/snis_model.dart';
import 'package:indsan/models/t_model.dart';
import 'package:isar/isar.dart';
import 'package:indsan/models/ana_model.dart';

import 'models/ise_model.dart';

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
          ResiduosModelSchema,
          DengueModelSchema,
          LeptoModelSchema,
          EsquisModelSchema,
          IrhModelSchema,
          IseModelSchema,
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

  Future<void> updateResiduos({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Residuos');
      await isar.writeTxn(() async {
        await isar.residuosModels.clear();
      });
    }
    int count = await isar.residuosModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Residuos');
      String dataFile = 'lib/data/residuos_mg.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<ResiduosModel> list = dataJsonObj
          .map<ResiduosModel>((e) => ResiduosModel.fromMap(e))
          .toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.residuosModels.put(item);
        }
      });
      count = await isar.residuosModels.count();
    }
    print('Residuos collection com: $count');
  }

  Future<void> updateDengue({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Dengue');
      await isar.writeTxn(() async {
        await isar.dengueModels.clear();
      });
    }
    int count = await isar.dengueModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Dengue');
      String dataFile = 'lib/data/dengue.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<DengueModel> list =
          dataJsonObj.map<DengueModel>((e) => DengueModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.dengueModels.put(item);
        }
      });
      count = await isar.dengueModels.count();
    }
    print('Dengue collection com: $count');
  }

  Future<void> updateLepto({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Lepto');
      await isar.writeTxn(() async {
        await isar.leptoModels.clear();
      });
    }
    int count = await isar.leptoModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Lepto');
      String dataFile = 'lib/data/lepto.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<LeptoModel> list =
          dataJsonObj.map<LeptoModel>((e) => LeptoModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.leptoModels.put(item);
        }
      });
      count = await isar.leptoModels.count();
    }
    print('Lepto collection com: $count');
  }

  Future<void> updateEsquis({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Esquis');
      await isar.writeTxn(() async {
        await isar.esquisModels.clear();
      });
    }
    int count = await isar.esquisModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Esquis');
      String dataFile = 'lib/data/esquis.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<EsquisModel> list =
          dataJsonObj.map<EsquisModel>((e) => EsquisModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.esquisModels.put(item);
        }
      });
      count = await isar.esquisModels.count();
    }
    print('Esquis collection com: $count');
  }

  Future<void> updateIrh({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Irh');
      await isar.writeTxn(() async {
        await isar.irhModels.clear();
      });
    }
    int count = await isar.irhModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Irh');
      String dataFile = 'lib/data/irh.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<IrhModel> list =
          dataJsonObj.map<IrhModel>((e) => IrhModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.irhModels.put(item);
        }
      });
      count = await isar.irhModels.count();
    }
    print('Irh collection com: $count');
  }

  Future<void> updateIse({bool update = false}) async {
    final isar = await _isar2;

    if (update) {
      print('Removendo todos os dados da collection Ise');
      await isar.writeTxn(() async {
        await isar.iseModels.clear();
      });
    }
    int count = await isar.iseModels.count();
    if (count == 0) {
      print('Lendo dados do json para collection Ise');
      String dataFile = 'lib/data/ise.json';
      var dataJson = File(dataFile).readAsStringSync();

      final dataJsonObj = json.decode(dataJson);
      final List<IseModel> list =
          dataJsonObj.map<IseModel>((e) => IseModel.fromMap(e)).toList();

      await isar.writeTxn(() async {
        for (var item in list) {
          isar.iseModels.put(item);
        }
      });
      count = await isar.iseModels.count();
    }
    print('Ise collection com: $count');
  }
}
