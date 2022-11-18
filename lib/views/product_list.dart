import 'package:flutter/material.dart';
import 'package:waychef_joao/models/product_model.dart';
import 'package:waychef_joao/ui/way_colors.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

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
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                      borderSide: BorderSide(color: Colors.white),
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
                                Icons.view_column,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Colunas',
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
              _table(),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  color: WayColor.bluePrimary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            '(1 of 1)',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 8),
                        child: Icon(
                          Icons.skip_previous,
                          color: Colors.grey[600],
                          size: 18,
                        ),
                      ),
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.grey[600],
                        size: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey[600],
                        size: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 16),
                        child: Icon(
                          Icons.skip_next,
                          color: Colors.grey[600],
                          size: 18,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            children: const [
                              Text(
                                '10',
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _table() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(color: Colors.grey[300]!),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(3),
        4: FlexColumnWidth(1),
        5: FlexColumnWidth(1),
        6: FlexColumnWidth(1),
        7: FlexColumnWidth(1),
        8: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            _headerOption(Icons.filter_3_rounded, 'Ativo', 0, false, 1),
            _headerOption(Icons.filter_3_rounded, 'Cód. Interno', 0, true, 1),
            _headerOption(Icons.filter_3_rounded, 'Código', 0, true, 1),
            _headerOption(Icons.filter_3_rounded, 'Descrição Abreviada', 0, true, 3),
            _headerOption(Icons.filter_3_rounded, 'Unidade', 0, true, 1),
            _headerOption(Icons.filter_3_rounded, 'Grupo', 0, true, 1),
            _headerOption(Icons.filter_3_rounded, 'Preço de Venda', 0, true, 1),
            _headerOption(Icons.filter_3_rounded, 'Preço de Custo', 0, true, 1),
            _headerOption(Icons.filter_3_rounded, 'Ações', 0, true, 1),
          ],
        ),
        ...List<TableRow>.generate(_productList.length, (index) {
          final product = _productList[index];
          return TableRow(
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
              ),
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.grey,
                  size: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    product.internalCode.toString(),
                    style: const TextStyle(color: Colors.black54),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    product.code.toString(),
                    style: const TextStyle(color: Colors.black54),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    product.description,
                    style: const TextStyle(color: Colors.black54),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    product.unit,
                    style: const TextStyle(color: Colors.black54),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    product.group,
                    style: const TextStyle(color: Colors.black54),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    product.priceSales.toString(),
                    style: const TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  product.costprice.toString(),
                  style: const TextStyle(color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                    IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.delete_forever,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ]);
        }),
      ],
    );
  }

  // Widget _producsList() {
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           // _headerOption(Icons.filter_3_rounded, 'Ativo', 0, false),
  //           // _headerOption(Icons.filter_3_rounded, 'Cód. Interno', 0, true),
  //           // _headerOption(Icons.filter_3_rounded, 'Código', 0, true),
  //           // _headerOption(
  //           //     Icons.filter_3_rounded, 'Descrição Abreviada', 0, true),
  //           // _headerOption(Icons.filter_3_rounded, 'Unidade', 0, true),
  //           // _headerOption(Icons.filter_3_rounded, 'Grupo', 0, true),
  //           // _headerOption(Icons.filter_3_rounded, 'Preço de Venda', 0, true),
  //           // _headerOption(Icons.filter_3_rounded, 'Preço de Custo', 0, true),
  //           // _headerOption(Icons.filter_3_rounded, 'Ações', 0, true),
  //         ],
  //       ),
  //       ListView.builder(
  //         shrinkWrap: true,
  //         itemCount: _productList.length,
  //         itemBuilder: (context, index) {
  //           final product = _productList[index];
  //           return Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               const Icon(
  //                 Icons.check,
  //                 color: Colors.grey,
  //               ),
  //               Text(
  //                 product.internalCode.toString(),
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 product.code.toString(),
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 product.description,
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 product.unit,
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 product.group,
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 product.priceSales.toString(),
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 product.costprice.toString(),
  //                 style: const TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //               const Text(
  //                 'Ação',
  //                 style: TextStyle(color: Colors.black54),
  //                 textAlign: TextAlign.left,
  //               ),
  //             ],
  //           );
  //         },
  //       ),
  //     ],
  //   );
  // }

  Widget _headerOption(
    IconData icon,
    String text,
    double leftPadding,
    bool showRightIcon,
    int flex,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: showRightIcon ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
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
