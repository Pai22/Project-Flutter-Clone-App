import 'package:flutter/material.dart';

import '../util/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  // list of donuts
  List pancakesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Blueberry", "55", Colors.blue, "lib/images/blueberry_pancake.png"],
    ["Honey", "45", Colors.red, "lib/images/Honey_PanCake.png"],
    ["MixBerry", "60", Colors.purple, "lib/images/MixBerry_PanCake.png"],
    ["Original", "40", Colors.brown, "lib/images/Original_Pancake.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      },
    );
  }
}
