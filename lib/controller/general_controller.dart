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
  ObservableList<ProductModel> productList = [
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
  void setShowProductList({required bool value}) {
    showProductList = value;
  }

  // @computed
  // bool get showProductList => _showProductList;
}
