import 'package:flutter/material.dart';

class CaminhoView extends StatelessWidget {
  const CaminhoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          //Com o mainAxisAlignment eu consigo fazer o alinhamento no eixo principal da linhha, que é o sentido horizontal.
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.home,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.yellow,
                    size: 14,
                  ),
                ),
                Text('Produto'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.yellow,
                    size: 14,
                  ),
                ),
                Text('Cadastro'),
              ],
            ),
            const Icon(
              Icons.question_mark_rounded,
              color: Colors.yellow,
            ),
          ],
        ));
  }
}
