import 'package:flutter/material.dart';
import '../../Core/Ui/Themes/base_screen.dart';
import '../../Controller/Limit/ListIndicatorLimitController.dart';

class Limit extends StatefulWidget {
  const Limit({super.key});

  @override
  State<Limit> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Limit> {

  ListIndicatorLimitController listlimit = ListIndicatorLimitController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: listlimit,
        builder: (context, child){
          return BaseScreen(textocabecalho: 'Limite de Compras', 
            widgetPage: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listlimit.listCards(),
            )
          );
        },
      ) ,
    );
  }
}