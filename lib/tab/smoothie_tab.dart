import 'package:flutter/material.dart';

import '../util/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  // list of donuts
  List smoothiesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Orange", "50", Colors.blue, "lib/images/orange_smoothie.png"],
    ["Strawberry", "55", Colors.red, "lib/images/strawberry_smoothie.png"],
    ["Banana", "45", Colors.purple, "lib/images/banana_smoothie.png"],
    ["Mango Passion Fruit", "60", Colors.brown, "lib/images/mangopassion_smoothie.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
    );
  }
}
