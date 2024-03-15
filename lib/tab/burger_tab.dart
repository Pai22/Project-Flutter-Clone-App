import 'package:flutter/material.dart';

import '../util/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  // list of donuts
  List burgersOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Pork Burger", "45", Colors.brown, "lib/images/pork_burger.png"],
    ["Chinken Burger", "40", Colors.brown, "lib/images/chinken_burger.png"],
    ["Fish Burger", "45", Colors.brown, "lib/images/fish_burger.png"],
    ["Meat Burger", "95", Colors.brown, "lib/images/meat_burger.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      },
    );
  }
}
