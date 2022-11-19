import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:waychef_joao/controller/general_controller.dart';
import 'package:waychef_joao/views/caminho_component.dart';
import 'package:waychef_joao/views/new_product_option.dart';
import 'package:waychef_joao/views/product_list_component.dart';
import 'package:waychef_joao/views/register_edit_product_component.dart';

import 'menu_component.dart';
import 'header_component.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final _controller = GeneralController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _controller.setShowProductList(true);
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            const HeaderComponent(),
            const MenuComponent(),
            CaminhoComponent(controller: _controller),
            NewProductOptionComponent(controller: _controller),
            Observer(
              builder: (context) => _controller.showProductList
                  ? ProductList(controller: _controller)
                  : RegisterEditProductComponent(controller: _controller),
            )
          ],
        ),
      ),
    );
  }
}
