import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controller/general_controller.dart';
import '../ui/way_colors.dart';

class CaminhoComponent extends StatelessWidget {
  const CaminhoComponent({
    required this.controller,
    super.key,
  });

  final GeneralController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          //Com o mainAxisAlignment eu consigo fazer o alinhamento no eixo principal da linhha, que é o sentido horizontal.
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.home,
                  color: WayColor.grey,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: WayColor.grey,
                    size: 14,
                  ),
                ),
                const Text('Produto'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: WayColor.grey,
                    size: 14,
                  ),
                ),
                const Text('Cadastro'),
                Observer(
                    builder: ((context) => !controller.showProductList
                        ? Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: WayColor.grey,
                                  size: 14,
                                ),
                              ),
                              Text(controller.productToEditOrRegister.description),
                            ],
                          )
                        : SizedBox.fromSize()))
              ],
            ),
            const Icon(
              Icons.question_mark_rounded,
              color: WayColor.grey,
            ),
          ],
        ));
  }
}
