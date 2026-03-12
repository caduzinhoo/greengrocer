import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/components/custom_text_fiel.dart';
import 'package:greengrocer/src/config/custom-colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SingUpScreen extends StatelessWidget {
   SingUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##', 
    filter: {'#': RegExp(r'[0-9]'),},
  );
  
  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####', 
    filter: {'#': RegExp(r'[0-9]'),},
  );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; // isolamento do tamanho da tela

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,

          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text('Cadastro', style: TextStyle(color: Colors.white, fontSize: 35)),
                    ),
                  ),
              
                  // formulario de cadastro
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                       CustomTextFiel(icon: Icons.email, label: 'Email'),
                       CustomTextFiel(icon: Icons.lock, label: 'Senha', isScret: true),
                       CustomTextFiel(icon: Icons.person, label: 'Nome'),
                       CustomTextFiel(icon: Icons.phone, label: 'Celular', inputFormatters: [phoneFormatter],),
                       CustomTextFiel(icon: Icons.file_copy, label: 'CPF', inputFormatters: [cpfFormatter],),
              
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Cadastrar usuário', style: TextStyle(fontSize: 18)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                  child: IconButton
                  (onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
