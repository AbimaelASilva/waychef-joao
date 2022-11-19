import 'package:flutter/material.dart';
import 'package:waychef_joao/ui/way_colors.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WayColor.blueSecondary,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          //Com o mainAxisAlignment eu consigo fazer o alinhamento no eixo principal da linhha, que é o sentido horizontal.
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: WayColor.bluePrimary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.storefront_sharp,
                        color: WayColor.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '1-Hamburgão do WayChef',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Matriz',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.launch,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    Icons.person_sharp,
                    color: Colors.white,
                    size: 42,
                  ),
                ),
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 42,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
