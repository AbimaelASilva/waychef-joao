class ProductModel {
  ProductModel({
    required this.active,
    required this.internalCode,
    required this.code,
    required this.description,
    this.shorDescrption,
    required this.unit,
    required this.group,
    required this.priceSales,
    required this.costprice,
  });

  bool active;
  int internalCode;
  int code;
  String description;
  String? shorDescrption;
  String unit;
  String group;
  double priceSales;
  double costprice;

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        active: json["active"] ?? false,
        internalCode: json["internalCode"] ?? 0,
        code: json["code"] ?? 0,
        description: json["description"] ?? '',
        shorDescrption: json["shorDescrption"] ?? '',
        unit: json["unit"] ?? '',
        group: json["group"] ?? '',
        priceSales: json["priceSales"] ?? 0.0,
        costprice: json["costprice"] ?? 0.0,
      );

  factory ProductModel.empty() => ProductModel(
        active: false,
        internalCode: 0,
        code: 0,
        description: '',
        shorDescrption: '',
        unit: '',
        group: '',
        priceSales: 0.0,
        costprice: 0.0,
      );
}
