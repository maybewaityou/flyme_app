// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registry_view_model.dart';

// **************************************************************************
// ViewModelGenerator
// **************************************************************************

class _$ViewModel extends ViewModel {
  String _userName = '';

  List<CustomUser> _users = [];

  RegistryViewObject _viewObject = RegistryViewObject.initial();

  String get userName => _userName;
  set userName(String args) {
    _userName = args;
    notifyListeners();
  }

  List<CustomUser> get users => _users;
  set users(List<CustomUser> args) {
    _users = args;
    notifyListeners();
  }

  RegistryViewObject get viewObject => _viewObject;
  set viewObject(RegistryViewObject args) {
    _viewObject = args;
    notifyListeners();
  }
}
