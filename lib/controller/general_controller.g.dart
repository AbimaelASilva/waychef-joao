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

  late final _$isNewProductAtom =
      Atom(name: '_GeneralController.isNewProduct', context: context);

  @override
  bool get isNewProduct {
    _$isNewProductAtom.reportRead();
    return super.isNewProduct;
  }

  @override
  set isNewProduct(bool value) {
    _$isNewProductAtom.reportWrite(value, super.isNewProduct, () {
      super.isNewProduct = value;
    });
  }

  late final _$productsListAtom =
      Atom(name: '_GeneralController.productsList', context: context);

  @override
  ObservableList<ProductModel> get productsList {
    _$productsListAtom.reportRead();
    return super.productsList;
  }

  @override
  set productsList(ObservableList<ProductModel> value) {
    _$productsListAtom.reportWrite(value, super.productsList, () {
      super.productsList = value;
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
  void setShowProductList(bool value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setShowProductList');
    try {
      return super.setShowProductList(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsNewProduct(bool value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setIsNewProduct');
    try {
      return super.setIsNewProduct(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShortDescription(String value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setShortDescription');
    try {
      return super.setShortDescription(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUnit(String value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setUnit');
    try {
      return super.setUnit(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGrop(String value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setGrop');
    try {
      return super.setGrop(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCoustPrice(String value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setCoustPrice');
    try {
      return super.setCoustPrice(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPriceSales(String value) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.setPriceSales');
    try {
      return super.setPriceSales(value);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addOnList() {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.addOnList');
    try {
      return super.addOnList();
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromList(int index) {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.removeFromList');
    try {
      return super.removeFromList(index);
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateProduct() {
    final _$actionInfo = _$_GeneralControllerActionController.startAction(
        name: '_GeneralController.updateProduct');
    try {
      return super.updateProduct();
    } finally {
      _$_GeneralControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productToEditOrRegister: ${productToEditOrRegister},
showProductList: ${showProductList},
isNewProduct: ${isNewProduct},
productsList: ${productsList}
    ''';
  }
}
