import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

import '../../product/product_screen.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  final void Function(GlobalKey) cartAnimationMethod;
  final GlobalKey imageGk = GlobalKey();

  ItemTile({super.key, 
  required this.item,
  required this.cartAnimationMethod,
  });

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
                  Expanded(
                    child:Hero( tag: item.imgUrl,
                    child: Container(
                      key: imageGk, // ✅ AGORA CORRETO
                      child: Image.asset(item.imgUrl),
                    ),
                  ),
                  ),
                    // Hero(
                    //   tag: item.imgUrl,
                    // child: Image.asset(item.imgUrl, key: imageGk,),
                    //   ),
                    // ), ERRADO

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

          child: widget(
            child: Material(
              child: InkWell(
                
                onTap: () {
                  cartAnimationMethod(imageGk); 
              
                },
                child: Ink(
                  height: 40,
                  width: 35,
              
                  decoration: BoxDecoration(
                    color: CustomColors.customSwatchColor,
                    
                  ),
              
                  child: const Icon(
                    Icons.add_shopping_cart_outlined, 
                    color: Colors.white, 
                    size: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
