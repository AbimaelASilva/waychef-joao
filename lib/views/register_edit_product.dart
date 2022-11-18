import 'package:flutter/material.dart';

import 'package:waychef_joao/ui/way_colors.dart';

late double _width = 0.0;
late double _height = 0.0;

class RegisterEditProduct extends StatelessWidget {
  const RegisterEditProduct({super.key});

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.grey[300]!,
                    )
                    //     color: WayColor.blueSecondary,
                    ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Principal'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text('Avançado'),
                      ),
                      Text('Histórico Preço'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text('Fornecedores'),
                      ),
                      Text('Info. Nutricionais'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text('Detalhes'),
                      ),
                      Text('Imagens'),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _containerModel(
                        _width * 0.2,
                        [
                          _option('Situação do produto', 'Ativo', Icons.arrow_drop_down, _width * 0.2),
                          _option('Código | Código de Barras', '1', null, _width * 0.2),
                          _option('Código Interno', '1', null, _width * 0.2),
                          _option('Estoque atual (Geral)', '0,000', Icons.zoom_out_map, _width * 0.2),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _containerModel(
                              _width * 0.5,
                              [
                                _option('Descrição', 'X-Salada', null, _width * 0.5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    _option('Descrição abreviada', 'X-Salada', null, _width * 0.2),
                                    _option('Unidade medida', 'UNIDADE(UNID)', Icons.arrow_drop_down, _width * 0.1),
                                    _option('Grupo', 'LANCHES', Icons.search, _width * 0.1),
                                  ],
                                ),
                                _option('Tipo', 'Produto para revenda', Icons.arrow_drop_down, _width * 0.3),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: _containerModel(
                                _width * 0.5,
                                [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _option('Mix de preços', 'Nenhum', Icons.arrow_drop_down, _width * 0.14),
                                      _option('Preço de custo', '0,00', null, _width * 0.14),
                                      _option('Preço de venda', '0,00', null, _width * 0.14),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _option('Margem de lucro', '0,00', null, _width * 0.14),
                                      _option('Estoque mínimo', '0,00', null, _width * 0.14),
                                      _option('Quantidade Máxima de venda', '0,00', null, _width * 0.14),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Imagem principal'),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Container(
                                  width: double.infinity,
                                  height: _height * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.grey[100]!,
                                      border: Border.all(
                                        color: Colors.grey[100]!,
                                      )),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[700],
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      'Remover',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange[600],
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.upload,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      'Anexar',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
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

  Widget _containerModel(
    double width,
    List<Widget> childrenOptions,
  ) =>
      Container(
        width: width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.grey[300]!,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: childrenOptions,
        ),
      );

  Widget _option(String labelText, String editingText, IconData? icon, double widthTextField) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: const TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 24,
              width: widthTextField,
              child: TextField(
                scrollPadding: EdgeInsets.zero,
                controller: TextEditingController(text: editingText),
                style: const TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  suffixIcon: Icon(icon),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ],
        ),
      );
}
