import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_fiel.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded( child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const[

              // Nome do app
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  children: [
                    TextSpan(
                      text: 'Green',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  TextSpan(
                    text:'grocer',
                    style: TextStyle(
                      color: Colors.red,
                    )
                  ),

                  ],
                ),
              ),

              // Categoria     
              Text("Frutas"),
            ],
          ),
          
          ),

          // Formulário
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
            ),
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                // email
                CustomTextFiel(icon: Icons.email, label: 'Email'),
          
                // senha
                CustomTextFiel(icon: Icons.lock, label: 'Senha', isScret: true),
          
                // botão de entra 
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {}, child: const Text('Entrar', style: TextStyle(
                      fontSize: 18,
                    ),
                   ),
                  ),
                ),
          
                // Esqueceu a senha 
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, child: const Text('Esqueceu a senha?', style: TextStyle(color: Colors.red,
                  ),),
                  ),
                ),
                
                // Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                       padding:  EdgeInsets.symmetric(horizontal: 15),
                       child:  Text('ou'),
                     ),
                     Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
          
                // botão de novo usuário
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {}, child: const Text('Criar conta', style: TextStyle(
                      fontSize: 18,
                    ),),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
