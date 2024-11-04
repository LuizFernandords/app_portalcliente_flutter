import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Core/Constants/colorsapp.dart';
import '../../Controller/Login/LoginController.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  // Controller
  LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(ColorsApp.colorpurpleinicial),
                    Color(ColorsApp.colorpurplefinal),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Entrar',
                      style: TextStyle(
                        color: Color(ColorsApp.coloryellow),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: controller.cpfController,
                            decoration: InputDecoration(
                              labelText: 'Digite seu Cpf',
                              border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(ColorsApp.colorwhite),
                                  width: 2,
                                ),
                              ),
                              errorText: controller.errorTextCpf,
                              labelStyle:
                                  TextStyle(color: Color(ColorsApp.colorwhite)),
                            ),
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Color(ColorsApp.colorwhite)),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              CpfInputFormatter(),
                            ],
                            focusNode: controller.cpfFocus,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: controller.senhaController,
                            decoration: InputDecoration(
                              labelText: 'Digite a Senha',
                              border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(ColorsApp.colorwhite),
                                  width: 2,
                                ),
                              ),
                              errorText: controller.errorTextSenha,
                              labelStyle:
                                  TextStyle(color: Color(ColorsApp.colorwhite)),
                              counterStyle:
                                  TextStyle(color: Color(ColorsApp.colorwhite)),
                            ),
                            obscureText: true,
                            style: TextStyle(color: Color(ColorsApp.colorwhite)),
                            maxLength: 20,
                            focusNode: controller.senhaFocus,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return ElevatedButton(
                                onPressed: (){
                                  controller.login(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(constraints.maxWidth * 0.5, 50),
                                ),
                                child: const Text('Login'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return ElevatedButton(
                                onPressed: (){
                                  controller.register(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(constraints.maxWidth * 0.5, 50),
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  elevation: 0
                                ),
                               child: Text('Não é Cliente da Loja?', style: TextStyle(color: Color(ColorsApp.colorwhite))),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return ElevatedButton(
                                onPressed: (){
                                  controller.reset(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(constraints.maxWidth * 0.5, 50),
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  elevation: 0
                                ),
                                child: Text('Esqueceu a Senha?', style: TextStyle(color: Color(ColorsApp.colorwhite))),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

