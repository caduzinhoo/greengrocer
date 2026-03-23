import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/cart_item_model.dart';

class CartTile extends StatelessWidget {
  final CartItemModel cartItem;
  const CartTile({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // imagem
        leading: Image.asset(
          cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        // Titulo
        title: Text(
          cartItem.item.itemName,
          style: TextStyle(
            fontWeight: FontWeight.w500),
        ),
        // Total

        // Quantidade
      ),
    );
  }
}
