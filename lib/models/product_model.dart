class ProductModel {
  ProductModel({
    required this.active,
    required this.internalCode,
    required this.code,
    required this.description,
    required this.unit,
    required this.group,
    required this.priceSales,
    required this.costprice,
  });

  bool active;
  int internalCode;
  int code;
  String description;
  String unit;
  String group;
  double priceSales;
  double costprice;

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        active: json["active"],
        internalCode: json["internalCode"],
        code: json["code"],
        description: json["description"],
        unit: json["unit"],
        group: json["group"],
        priceSales: json["priceSales"],
        costprice: json["costprice"],
      );

  factory ProductModel.empty() => ProductModel(
        active: false,
        internalCode: 0,
        code: 0,
        description: '',
        unit: '',
        group: '',
        priceSales: 0.0,
        costprice: 0.0,
      );

  // Map<String, dynamic> toMap() => {
  //       "active": active,
  //       "internalCode": internalCode,
  //       "code": code,
  //       "description": description,
  //       "unit": unit,
  //     };
}
