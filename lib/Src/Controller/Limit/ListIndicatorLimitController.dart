import 'package:flutter/material.dart';
import '../../Core/Ui/Widgets/Indicator.dart';

class ListIndicatorLimitController extends ChangeNotifier{
   List<Widget> listCards(){
     
     List<Widget> indicator = [];
     indicator.add(const Indicator(informacao: 'Limite total:', valor: 'R\$ 3.000,00'));
     indicator.add(const Indicator(informacao: 'Limite utilizado:', valor: 'R\$ 1.000,00'));
     indicator.add(const Indicator(informacao: 'Limite disponível:', valor: 'R\$ 2.000,00'));
     return indicator;
  }

  void updateList(){
     notifyListeners();
  }
}