import 'package:flutter/material.dart';
import '../../Constants/colorsapp.dart';

class Details extends StatefulWidget {
  
  final String textocabecalho;
  final String texto;

  const Details({super.key, required this.textocabecalho, required this.texto});

  @override
  State<Details> createState() => DetailsState();
}

class DetailsState extends State<Details> {
  
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(widget.texto),
      ),
    );
  }
}
