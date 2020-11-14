import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_master_detail_flutter/src/core/locator.dart';

import 'src/main/main_app.dart';

abstract class BaseModel {}

class Car extends BaseModel {
  final String name;
  Car({this.name});
}

class BaseService<T extends BaseModel> {
  String _nome = 'Marcos';

  String getName() {
    return _nome;
  }

  setNome(String novoNome) {
    this._nome = novoNome;
  }
}

class CarService extends BaseService<Car> {}

abstract class BaseViewModel<T> extends ChangeNotifier {
  BaseService _service;

  String getName() {
    var name = this._service.getName();
    return name;
  }

  setNome(String nome) {
    this._service.setNome(nome);
    notifyListeners();
  }
}

class CarModel extends BaseViewModel<Car> {
  CarModel() {
    this._service = new CarService();
  }
}

void main() {
  setupLocator();
  runApp(MainApp());
}

