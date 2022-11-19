import 'package:mobx/mobx.dart';

import 'package:waychef_joao/models/product_model.dart';

part 'general_controller.g.dart';

class GeneralController = _GeneralController with _$GeneralController;

abstract class _GeneralController with Store {
  @observable
  ProductModel productToEditOrRegister = ProductModel.empty();

  @observable
  bool showProductList = true;

  @observable
  bool isNewProduct = false;

  @observable
  ObservableList<ProductModel> productsList = [
    ProductModel(
      active: true,
      internalCode: 1,
      code: 01,
      description: 'X-Salada',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 16.00,
      costprice: 9.00,
    ),
    ProductModel(
      active: true,
      internalCode: 2,
      code: 02,
      description: 'X-Tudo',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
    ProductModel(
      active: true,
      internalCode: 3,
      code: 03,
      description: 'X-Bacon',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
    ProductModel(
      active: true,
      internalCode: 4,
      code: 04,
      description: 'Água',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
    ProductModel(
      active: true,
      internalCode: 5,
      code: 05,
      description: 'Refrig. Lata',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
    ProductModel(
      active: true,
      internalCode: 6,
      code: 06,
      description: 'Suco 600ml',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
  ].asObservable();

  @action
  void setProductToEdit(ProductModel product) {
    productToEditOrRegister = product;
  }

  @action
  void setShowProductList(bool value) {
    showProductList = value;
  }

  @action
  void setIsNewProduct(bool value) {
    if (value) {
      productToEditOrRegister = ProductModel.empty();
    }
    isNewProduct = value;
  }

  @action
  void setDescription(String value) {
    productToEditOrRegister.description = value;
  }

  @action
  void setShortDescription(String value) {
    productToEditOrRegister.shorDescrption = value;
  }

  @action
  void setUnit(String value) {
    productToEditOrRegister.unit = value;
  }

  @action
  void setGrop(String value) {
    productToEditOrRegister.group = value;
  }

  @action
  void setCoustPrice(String value) {
    productToEditOrRegister.costprice = value.isNotEmpty ? double.parse(value) : 0.0;
  }

  @action
  void setPriceSales(String value) {
    productToEditOrRegister.priceSales = value.isNotEmpty ? double.parse(value) : 0.0;
  }

  void chooseUpdateOrRegister() {
    if (isNewProduct) {
      addOnList();
    } else {
      updateProduct();
    }
  }

  @action
  void addOnList() {
    productToEditOrRegister.internalCode = productsList.length + 1;
    productToEditOrRegister.code = productsList.length + 1;
    productsList.add(productToEditOrRegister);
    showProductList = true;
  }

  @action
  void removeFromList(int index) {
    productsList.removeAt(index);
  }

  @action
  void updateProduct() {
    final productOnList = productsList.firstWhere((product) => product.code == productToEditOrRegister.code);
    final indexToUpdate = productsList.indexOf(productOnList);
    productsList[indexToUpdate] = productToEditOrRegister;
    showProductList = true;
  }
}
