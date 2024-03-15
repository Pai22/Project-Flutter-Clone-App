import 'package:flutter/material.dart';

import '../util/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  // list of donuts
  List pizzasOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Double cheese", "70", Colors.brown, "lib/images/doublecheese_pizza.png"],
    ["chicken", "60", Colors.brown, "lib/images/chinken_pizza.png"],
    ["Hawaiian", "65", Colors.brown, "lib/images/hawaiian pizza.png"],
    ["Pepperoni", "65", Colors.brown, "lib/images/pepperoni_pizza.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor:pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1],
          pizzaColor: pizzasOnSale[index][2],
          imageName:  pizzasOnSale[index][3],
        );
      },
    );
  }
}
