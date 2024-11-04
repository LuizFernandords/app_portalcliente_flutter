import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:portal/Src/Core/Constants/colorsapp.dart';
import './Details.dart';

class CardItem extends StatefulWidget {
  
  final String valor;
  final String data;
  
  const CardItem({required this.data, required this.valor, super.key});

  @override
  State<CardItem> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Slidable(
        actionPane: const SlidableDrawerActionPane(),
        actionExtentRatio: 0.20,
        secondaryActions: [
          IconSlideAction(
            color: Color(ColorsApp.colorpurpleinicial),
            icon: Icons.arrow_forward,
            caption: 'Detalhes',
            onTap: (){
               Navigator.pushNamed(
                context, 
                '/detail',
                arguments: const Details(textocabecalho: 'Detalhes', texto: 'Venda'),
              );
            },
          ),
        ],
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(ColorsApp.colorgrey),
          ),
          padding: const EdgeInsets.all(16),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(widget.data,
                    style: const TextStyle(
                      fontSize: 12,
                    )),
                ],
              ),
                Text(widget.valor,
                style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          )
        ),
      )
    );
  }
}