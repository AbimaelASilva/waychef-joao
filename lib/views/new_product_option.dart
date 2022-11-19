import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:waychef_joao/controller/general_controller.dart';
import 'package:waychef_joao/ui/way_colors.dart';

class NewProductOptionComponent extends StatelessWidget {
  const NewProductOptionComponent({
    required this.controller,
    super.key,
  });

  final GeneralController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: WayColor.bluePrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Observer(
                    builder: (context) => controller.showProductList
                        ? SizedBox.fromSize()
                        : ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[500],
                            ),
                            onPressed: () => controller.setShowProductList(true),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Voltar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: WayColor.blueSecondary,
                      ),
                      onPressed: () {
                        controller.setIsNewProduct(true);
                        controller.setShowProductList(false);
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Novo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Observer(
                    builder: (context) => controller.showProductList
                        ? SizedBox.fromSize()
                        : ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: WayColor.blueSecondary,
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.file_copy_sharp,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Clonar produto atual',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                  ),
                ],
              ),
              Observer(
                builder: (context) => controller.showProductList
                    ? SizedBox.fromSize()
                    : ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xAA4cb84b),
                        ),
                        onPressed: () => controller.chooseUpdateOrRegister(),
                        icon: const Icon(
                          Icons.file_copy_sharp,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Gravar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
