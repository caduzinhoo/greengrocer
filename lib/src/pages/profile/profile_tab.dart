import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/components/custom_text_fiel.dart';
import 'package:greengrocer/src/config/app_data.dart' as appData;

 class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
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
              onPressed: (){
                updatePassword(); 
              },
             child: Text('Atualizar senha'),
             ),
          ), 

        ],
      ),
    );
  }

  Future<bool?>updatePassword(){
    return showDialog(
      context: context,
      builder:(context){
        return Dialog( 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
              
                    // Titulo
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Atualização de senha',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
              
                    // Senha atual
                    CustomTextFiel(
                      isScret: true,
                      icon: Icons.lock,
                      label: 'Senha atual',  
                      ),
                      
                      // Nova senha
                    CustomTextFiel(
                      isScret: true,
                      icon: Icons.lock_outline_rounded,
                      label: 'Nova senha',  
                      ),
              
                      // Confirmar nova senha
                    CustomTextFiel(
                      isScret: true,
                      icon: Icons.lock_outline_rounded, 
                      label: 'Confirmar nova senha',  
                      ),
                  
                    // Botão para atualizar a senha
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed:(){}, 
                        child: Text('Atualizar'),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  icon: Icon(
                    Icons.close
                    )
                  ),
              ),
            ],
          ),
        );
      } 
    );
  }
}
