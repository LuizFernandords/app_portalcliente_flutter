import 'package:flutter/material.dart';
import '../../Constants/colorsapp.dart';
import '../../Constants/screensize.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({super.key, required this.nomeItem, required this.icone, required this.rota});

  final String nomeItem;
  final IconData icone;
  final String rota;
 
  @override
  Widget build(BuildContext context) {

    ScreenSize screen = ScreenSize(context);

    return ListTile(
      title: Row(
        children: [
          Icon(
            icone,
            color: Color(ColorsApp.coloryellow),
          ),
          SizedBox(
            height: screen.heightPercentage(7),
            width: screen.widthPercentage(3),
          ),
          Text(
            nomeItem,
            style: TextStyle(
              color: Color(ColorsApp.colorwhite),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, rota);
      },
    );
  }
}
