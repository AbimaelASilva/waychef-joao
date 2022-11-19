import 'package:flutter/material.dart';
import 'package:waychef_joao/ui/way_colors.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: WayColor.bluePrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _menuOption(Icons.data_saver_off, 'Dashboard', 8, false),
            _menuOption(Icons.food_bank, 'Produtos', 32, true),
            _menuOption(Icons.person_outline_sharp, 'Clientes', 32, true),
            _menuOption(Icons.chrome_reader_mode_outlined, 'Finanças', 32, true),
            _menuOption(Icons.search, 'Consultas Rápidas', 32, true),
            _menuOption(Icons.analytics, 'Análises e Relatórios', 32, true),
          ],
        ),
      ),
    );
  }

  Widget _menuOption(
    IconData icon,
    String text,
    double leftPadding,
    bool showRightIcon,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: leftPadding, right: 8),
          child: Icon(
            icon,
            color: Colors.white,
            size: 32,
          ),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
          maxLines: 1,
        ),
        if (showRightIcon)
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.white,
            size: 32,
          ),
      ],
    );
  }
}