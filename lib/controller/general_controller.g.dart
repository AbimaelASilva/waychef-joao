// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GeneralController on _GeneralController, Store {
  late final _$productToEditOrRegisterAtom = Atom(
      name: '_GeneralController.productToEditOrRegister', context: context);

  @override
  ProductModel get productToEditOrRegister {
    _$productToEditOrRegisterAtom.reportRead();
    return super.productToEditOrRegister;
  }

  @override
  set productToEditOrRegister(ProductModel value) {
    _$productToEditOrRegisterAtom
        .reportWrite(value, super.productToEditOrRegister, () {
      super.productToEditOrRegister = value;
    });
  }

  late final _$showProductListAtom =
      Atom(name: '_GeneralController.showProductList', context: context);

  @override
  bool get showProductList {
    _$showProductListAtom.reportRead();
    return super.showProductList;
  }

  @override
  set showProductList(bool value) {
    _$showProductListAtom.reportWrite(value, super.showProductList, () {
      super.showProductList = value;
    });
  }

  late final _$productListAtom =
      Atom(name: '_GeneralController.productList', context: context);

  @override
  ObservableList<ProductModel> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<ProductModel> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  late final _$_GeneralControllerActionController =
      ActionController(name: '_GeneralController', context: context);

  @override
  void setProductToEdit(ProductModel product) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setProductToEdit');
    try {
      return super.setProductToEdit(product);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowProductList({required bool value}) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setShowProductList');
    try {
      return super.setShowProductList(value: value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productToEditOrRegister: ${productToEditOrRegister},
showProductList: ${showProductList},
productList: ${productList}
    ''';
  }
}
