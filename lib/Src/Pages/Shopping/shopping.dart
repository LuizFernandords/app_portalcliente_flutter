import 'package:flutter/material.dart';
import '../../Core/Ui/Themes/base_screen.dart';
import '../../Core/Ui/Widgets/ListItems.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return const BaseScreen(textocabecalho: 'Compras', widgetPage: ListItems());
  }
}