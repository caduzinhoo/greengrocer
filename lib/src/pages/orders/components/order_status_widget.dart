import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom-colors.dart';

class OrderStatusWidget extends StatelessWidget {
 
 final String status;
 final bool isOverdue;
 final Map<String, int> allStatus = <String, int>{
  'pending_payment':0,
  'refunded' : 1,
  'paid' : 2,
  'preparing_purchase' : 3,
  'shipping' : 4,
  'delivered' : 5,
 };
 
  OrderStatusWidget({
    required this.isOverdue,
    required this.status,
  });
 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
          
        _StatusDot(
          title:'Teste de pagamento',
          isActive: true,
          ),

          _CustomDivider(),

        _StatusDot(
          title: 'Pagamento efetuado',
          isActive: false,
          ),
      ],
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8, 
        vertical: 3),
      height: 10,
      width: 2,
      color: Colors.grey.shade400,
      );
}
}


class _StatusDot extends StatelessWidget {
  final bool isActive;
  final String title;
  const _StatusDot({
    required this.isActive,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        // Dot
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: CustomColors.customSwatchColor, 
            ),

            color: isActive? CustomColors.customSwatchColor : Colors.transparent,
          ),
          child: isActive? Icon(Icons.check, size: 13, color: Colors.white,) : SizedBox.shrink(),
        ),
     
        SizedBox(
          width: 5,
        ),

        // Texto
        Expanded(
          child: Text(title, style: TextStyle(
            fontSize: 12,
 
          ),),
        ),
     ],
    );
  }
}