
import 'package:flutter/widgets.dart';
import 'package:template_master_detail_flutter/src/service/service_base.dart';

import '../../src/model/model_base.dart';

abstract class ViewModelBase<T extends ModelBase>  extends ChangeNotifier {
  ServiceBase _service;
  List<T> listResource;

  Future<List<T>> findAll() async {
    listResource = await this._service.findAll();
    if (listResource == null) {

    }
    notifyListeners();
    return listResource;
  }

  Future<T> findById(int id) async {
    
  }
  Future<T> findByUuid(String uuid) async {}
  Future<T> insert(T resource) async {}
  Future<T> update(T resource) async {}
  Future<bool> delete(T resource) async {}
}