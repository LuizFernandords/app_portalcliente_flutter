import 'package:flutter/material.dart';
import '../../Core/Ui/Widgets/CardItem.dart';

class ListItemsController extends ChangeNotifier{
   List<Widget> listCards(){
     
     List<Widget> cards = [];
     
     for(int i = 0; i < 10; i++){
       cards.add(const CardItem(data: 'Data da Compra: 04/10/2024 13:30', valor: 'Total: R\$ 300,00',));
     }
     return cards;
  }

  void updateList(){
     notifyListeners();
  }
}