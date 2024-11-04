import 'package:flutter/material.dart';
import '../../Constants/colorsapp.dart';
import '../../Constants/screensize.dart';
import '../Widgets/ItemMenu.dart';

class BaseScreen extends StatefulWidget {
  
  final String textocabecalho;
  final Widget widgetPage;
  
  const BaseScreen({super.key, required this.textocabecalho, required  this.widgetPage});

  @override
  State<BaseScreen> createState() => BaseScreenState();
}

class BaseScreenState extends State<BaseScreen> {
  
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
    ScreenSize screen = ScreenSize(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.textocabecalho,
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
      drawer: Drawer(
        child: Container(
          decoration: drawerGradient,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screen.widthPercentage(15),
                  horizontal: screen.heightPercentage(2),
                ),
                child: SizedBox(
                  height: screen.heightPercentage(10),
                  child: Text(
                    'Bem-vindo, Luiz!',
                    style: TextStyle(
                      color: Color(ColorsApp.colorwhite),
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const Column(
                children: [
                  ItemMenu(nomeItem: 'Faturas', icone: Icons.credit_score, rota: '/invoices',),
                  ItemMenu(nomeItem: 'Limite', icone: Icons.account_balance, rota: '/limit'),
                  ItemMenu(nomeItem: 'Compras', icone: Icons.shopping_bag_outlined, rota: '/shopping'),
                  ItemMenu(nomeItem: 'Financeiro', icone: Icons.attach_money, rota: '/financial'),
                  ItemMenu(nomeItem: 'Pontos', icone: Icons.auto_awesome_rounded, rota: '/loyalt'),
                  ItemMenu(nomeItem: 'Sair', icone: Icons.exit_to_app, rota: '/'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: widget.widgetPage,
              ),
            ],
          )
        ),
      ),
    );
  }
}
