import 'dart:io';

import 'package:isar/isar.dart';
import 'package:indsan/models/pop_model.dart';
import 'package:indsan/models/snis_model.dart';
import 'package:indsan/models/t_model.dart';
import 'package:indsan/models/ana_model.dart';

class IndIABData {
  Future<bool> existData(String munCode, int year, IOSink? logs) async {
    bool result = true;
    Isar isar = Isar.getInstance()!;
    SNISModel? snisModel = await isar.sNISModels
        .filter()
        .munCodeEqualTo(munCode)
        .yearEqualTo(year)
        .findFirst();

    PopModel? popModel =
        await isar.popModels.filter().munCodeEqualTo(munCode).findFirst();

    TModel? tModel =
        await isar.tModels.filter().munCodeEqualTo(munCode).findFirst();

    ANAModel? anaModel =
        await isar.aNAModels.filter().munCodeEqualTo(munCode).findFirst();
    // print('+++ Analisando falta de dados');
    List<String> faltaDados = [];
    if (snisModel != null) {
      if (snisModel.AG012 != null) {
        AG012 = snisModel.AG012!;
      } else {
        faltaDados.add('snisModel.AG012');
        result = false;
      }
      if (snisModel.IN022_AE != null) {
        IN022_AE = snisModel.IN022_AE!;
      } else {
        faltaDados.add('snisModel.IN022_AE');
        result = false;
      }
      if (snisModel.IN023_AE != null) {
        IN023_AE = snisModel.IN023_AE!;
      } else {
        faltaDados.add('snisModel.IN022_AE');
        result = false;
      }
      if (snisModel.IN049_AE != null) {
        if (snisModel.IN049_AE! > 0) {
          IN049_AE = snisModel.IN049_AE!;
        } else {
          // IN049_AE = 15.21;
          // IN049_AE = 15.4566;
          // throw Exception('IN049_AE precisa de média');
          // faltaDados.add('IN049_AE precisa de média');
          // result = false;
          List<SNISModel> snisModelList =
              await isar.sNISModels.filter().munCodeEqualTo(munCode).findAll();
          double IN049_AE_Sum = 0;
          int IN049_AE_Length = 0;
          for (var element in snisModelList) {
            if (element.IN049_AE != null) {
              IN049_AE_Sum = IN049_AE_Sum + element.IN049_AE!;
              IN049_AE_Length++;
            }
          }
          IN049_AE = IN049_AE_Sum / IN049_AE_Length;
        }
      } else {
        faltaDados.add('snisModel.IN049_AE');
        result = false;
      }
      if (snisModel.QD006 != null) {
        QD006 = snisModel.QD006!;
      } else {
        faltaDados.add('snisModel.QD006');
        result = false;
      }
      if (snisModel.QD007 != null) {
        QD007 = snisModel.QD007!;
      } else {
        faltaDados.add('snisModel.QD007');
        result = false;
      }
      if (snisModel.QD008 != null) {
        QD008 = snisModel.QD008!;
      } else {
        faltaDados.add('snisModel.QD008');
        result = false;
      }
      if (snisModel.QD009 != null) {
        QD009 = snisModel.QD009!;
      } else {
        faltaDados.add('snisModel.QD009');
        result = false;
      }
      if (snisModel.QD026 != null) {
        QD026 = snisModel.QD026!;
      } else {
        faltaDados.add('snisModel.QD026');
        result = false;
      }
      if (snisModel.QD019 != null) {
        QD019 = snisModel.QD019!;
      } else {
        faltaDados.add('snisModel.QD019');
        result = false;
      }
      if (snisModel.QD020 != null) {
        QD020 = snisModel.QD020!;
      } else {
        faltaDados.add('snisModel.QD020');
        result = false;
      }
      if (snisModel.QD027 != null) {
        QD027 = snisModel.QD027!;
      } else {
        faltaDados.add('snisModel.QD027');
        result = false;
      }
      if (snisModel.QD028 != null) {
        QD028 = snisModel.QD028!;
      } else {
        faltaDados.add('snisModel.QD028');
        result = false;
      }
    } else {
      faltaDados.add('snisModel');
      result = false;
    }

    if (popModel != null) {
      if (year == 2015) {
        if (popModel.y2015 != null) {
          POP = popModel.y2015!;
        } else {
          faltaDados.add('popModel.y2015');
          result = false;
        }
      } else if (year == 2016) {
        if (popModel.y2016 != null) {
          POP = popModel.y2016!;
        } else {
          faltaDados.add('popModel.y2016');
          result = false;
        }
      } else if (year == 2017) {
        if (popModel.y2017 != null) {
          POP = popModel.y2017!;
        } else {
          faltaDados.add('popModel.y2017');
          result = false;
        }
      } else if (year == 2018) {
        if (popModel.y2018 != null) {
          POP = popModel.y2018!;
        } else {
          faltaDados.add('popModel.y2018');
          result = false;
        }
      } else if (year == 2019) {
        if (popModel.y2019 != null) {
          POP = popModel.y2019!;
        } else {
          faltaDados.add('popModel.y2019');
          result = false;
        }
      } else if (year == 2020) {
        if (popModel.y2020 != null) {
          POP = popModel.y2020!;
        } else {
          faltaDados.add('popModel.y2020');
          result = false;
        }
      } else {
        faltaDados.add('popModel.y????'); //Ano fora da faixa de dados
        result = false;
      }
    } else {
      faltaDados.add('popModel');
      result = false;
    }
    if (tModel != null) {
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
    } else {
      faltaDados.add('tModel');
      result = false;
    }
    if (anaModel != null) {
      if (anaModel.font != null) {
        font = anaModel.font!;
      } else {
        faltaDados.add('anaModel.font');
        result = false;
      }
    } else {
      faltaDados.add('anaModel');
      result = false;
    }
    if (faltaDados.isNotEmpty) {
      print('--- Faltam estes dados');
      print(faltaDados);
      if (logs != null) logs.writeln(faltaDados);
    }
    return result;
  }

  //SNIS
  double AG012 = 0;

  double IN022_AE = 0;
  double IN023_AE = 0;
  double IN049_AE = 0;

  double QD006 = 0;
  double QD007 = 0;
  double QD008 = 0;
  double QD009 = 0;
  double QD019 = 0;
  double QD020 = 0;
  double QD026 = 0;
  double QD027 = 0;
  double QD028 = 0;

  //POP
  double POP = 0;
  //
  double IN049_5 =
      35.37; //constante veja em: https://docs.google.com/document/d/1awfVF5zT-ibJwU1d68UyitqF938_AGKfkcms5giil1o/edit#
  //T
  double T = 0;
  //Ana
  int font = 0;
}
