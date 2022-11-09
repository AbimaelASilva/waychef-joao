import 'package:flutter/material.dart';
import 'package:waychef_joao/views/caminho_view.dart';
import 'package:waychef_joao/views/new_product_option.dart';
import 'package:waychef_joao/views/product_listing.dart';

import 'menu_view.dart';
import 'header_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const HeaderView(),
          const MenuView(),
          const CaminhoView(),
          const NewProductOption(),
          ProductListing(),
        ],
      ),
    );
  }
}
