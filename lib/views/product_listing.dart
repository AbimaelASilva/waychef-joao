import 'package:flutter/material.dart';
import 'package:waychef_joao/models/product_model.dart';
import 'package:waychef_joao/ui/way_colors.dart';

class ProductListing extends StatelessWidget {
  ProductListing({super.key});

  final _productList = [
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
      description: 'X-Frango',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
    ProductModel(
      active: true,
      internalCode: 5,
      code: 05,
      description: 'X-Farofa',
      unit: 'UNIDADE(UND)',
      group: 'LANCHES',
      priceSales: 18.00,
      costprice: 10.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                  color: WayColor.blueSecondary,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Row(
                          children: [
                            const Text(
                              'Filtrar:',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                                height: 20,
                                width: 150,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  ),
                                )),
                            const Spacer(),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[700],
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Novo',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              _producsList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _producsList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _headerOption(Icons.filter_3_rounded, 'Ativo', 0, false),
            _headerOption(Icons.filter_3_rounded, 'Cód. Interno', 0, true),
            _headerOption(Icons.filter_3_rounded, 'Código', 0, true),
            _headerOption(
                Icons.filter_3_rounded, 'Descrição Abreviada', 0, true),
            _headerOption(Icons.filter_3_rounded, 'Unidade', 0, true),
            _headerOption(Icons.filter_3_rounded, 'Grupo', 0, true),
            _headerOption(Icons.filter_3_rounded, 'Preço de Venda', 0, true),
            _headerOption(Icons.filter_3_rounded, 'Preço de Custo', 0, true),
            _headerOption(Icons.filter_3_rounded, 'Ações', 0, true),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: _productList.length,
          itemBuilder: (context, index) {
            final product = _productList[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.active.toString(),
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                Text(
                  product.internalCode.toString(),
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.code.toString(),
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.description,
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.unit,
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.group,
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.priceSales.toString(),
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.costprice.toString(),
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Ação',
                  style: TextStyle(color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _headerOption(
    IconData icon,
    String text,
    double leftPadding,
    bool showRightIcon,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          if (showRightIcon)
            const Icon(
              Icons.list,
              color: Colors.black54,
              size: 18,
            ),
        ],
      ),
    );
  }
}
