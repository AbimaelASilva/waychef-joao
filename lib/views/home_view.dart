import 'package:flutter/material.dart';
import 'package:waychef_joao/views/caminho_view.dart';
import 'package:waychef_joao/views/new_product_option.dart';
import 'package:waychef_joao/views/product_list.dart';
import 'package:waychef_joao/views/register_edit_product.dart';

import 'menu_view.dart';
import 'header_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: const [
          HeaderView(),
          MenuView(),
          CaminhoView(),
          NewProductOption(),
          // ProductList(),
          RegisterEditProduct(),
        ],
      ),
    );
  }
}
