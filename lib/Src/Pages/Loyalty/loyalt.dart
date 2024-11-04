import 'package:flutter/material.dart';
import '../../Core/Ui/Themes/base_screen.dart';
import '../../Controller/Loyalty/ListIndicatorLoyaltController.dart';

class Loyalt extends StatefulWidget {
  const Loyalt({super.key});

  @override
  State<Loyalt> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Loyalt> {

ListIndicatorLoyaltController listloyalt = ListIndicatorLoyaltController();

 @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: listloyalt,
        builder: (context, child){
          return BaseScreen(textocabecalho: 'Pontos Fidelidade', 
            widgetPage: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listloyalt.listCards(),
            )
          );
        },
      ) ,
    );
  }
}

