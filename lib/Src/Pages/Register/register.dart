import 'package:flutter/material.dart';
import '../../Core/Constants/colorsapp.dart';

class Register extends StatefulWidget {


  const Register({super.key});

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  
  // Isso define um getter chamado drawerGradient que retorna um valor do tipo BoxDecoration.
  BoxDecoration get drawerGradient => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(ColorsApp.colorpurpleinicial),
            Color(ColorsApp.colorpurplefinal),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastro',
          style: TextStyle(
            color: Color(ColorsApp.colorwhite),
            fontWeight: FontWeight.w600,
          ),
        ),
        flexibleSpace: Container(
          decoration: drawerGradient,
        ),
        iconTheme: IconThemeData(
          color: Color(ColorsApp.colorwhite),
          size: 40,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nascimento'
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cpf'
              )
            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'Celular'
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'N° de calçado'
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sexo'
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Endereço'
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cidade/UF'
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail'
              )
            ),   
          ],
        )
      ),
    );
  }
}
