import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/item_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, 
  required this.item });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(210),

      body: Column(
        children: [
          Expanded(
            child: Image.asset(item.imgUrl),
           ),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),


              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  offset: Offset(0, 2),
                )
              ]

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                // Nome - Quantidade 
                Row(
                  children: [
                    Text(
                      item.itemName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold
                      ),                  
                    ),

                    Container(
                      height: 30,
                      width: 70,
                      color: Colors.red,
                    )
                  ],
                )
                // Preço 

                // Descrição 

                // Botão 
              ],
            ),


          ))


        ]
      ),
    );
  }
}
