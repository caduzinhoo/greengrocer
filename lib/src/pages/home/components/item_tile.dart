import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom-colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

import '../../product/product_screen.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  ItemTile({super.key, required this.item});

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Conteúdo
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (c) {
                  return ProductScreen(item: item);
                },
              ),
            );
          },
          child: Card(
            elevation: 1,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image
                  Expanded(child: Image.asset(item.imgUrl)),

                  // Nome
                  Text(item.itemName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

                  // Preço - unidade
                  Row(
                    children: [
                      Text(
                        utilsServices.priceToCurrency(item.price),
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.customSwatchColor),
                      ),

                      Text(
                        '/${item.unit}',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // botão add carrinho
        Positioned(
          top: 4,
          right: 4,

          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,

              decoration: BoxDecoration(
                color: CustomColors.customSwatchColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(20)),
              ),

              child: const Icon(Icons.add_shopping_cart_outlined, color: Colors.white, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
