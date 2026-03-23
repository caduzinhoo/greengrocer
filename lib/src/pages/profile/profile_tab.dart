import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/components/custom_text_fiel.dart';
import 'package:greengrocer/src/config/app_data.dart' as appData;

 class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil do usuário'),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
        ],
      ),

      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          // Email
          CustomTextFiel(
            readOnly: true,
            initialValue: appData.user.email,
            icon: Icons.email, 
            label: 'Email'),

          // Nome
          CustomTextFiel(
            readOnly: true,
            initialValue: appData.user.name,
            icon: Icons.person, 
            label: 'Nome'
            ),
          // Celular
          CustomTextFiel(
            readOnly: true,
            initialValue: appData.user.phone,
            icon: Icons.phone, 
            label: 'Celular'
            ),
          // CPF
          CustomTextFiel(
            readOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.file_copy, 
            label: 'CPF',
            isScret: true,
            ),
          // Botão para atualizar a senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: (){},
             child: Text('Atualizar senha'),
             ),
          ), 

        ],
      ),
    );
  }
}
