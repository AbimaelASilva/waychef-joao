import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:waychef_joao/controller/general_controller.dart';
import 'package:waychef_joao/views/caminho_view.dart';
import 'package:waychef_joao/views/new_product_option.dart';
import 'package:waychef_joao/views/product_list.dart';
import 'package:waychef_joao/views/register_edit_product.dart';

import 'menu_view.dart';
import 'header_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final _controller = GeneralController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _controller.setShowProductList(value: true);
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            const HeaderView(),
            const MenuView(),
            const CaminhoView(),
            const NewProductOption(),
            Observer(
              builder: (context) => _controller.showProductList
                  ? ProductList(
                      controller: _controller,
                    )
                  : RegisterEditProduct(
                      controller: _controller,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
