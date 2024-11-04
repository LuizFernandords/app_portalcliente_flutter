import 'package:flutter/material.dart';
import '../../Core/Ui/Widgets/Indicator.dart';

class ListIndicatorLoyaltController extends ChangeNotifier{
   List<Widget> listCards(){
     
     List<Widget> indicator = [];
     indicator.add(const Indicator(informacao: 'Pontos', valor: '16',));
     indicator.add(const Indicator(informacao: 'Valor em Pontos', valor: 'R\$16,00',));
     return indicator;
  }

  void updateList(){
     notifyListeners();
  }
}