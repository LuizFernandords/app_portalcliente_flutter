import 'package:flutter/material.dart';
import '../../Core/Ui/Themes/base_screen.dart';
import '../../Core/Ui/Widgets/ListItems.dart';

class Financial extends StatefulWidget {
  const Financial({super.key});

  @override
  State<Financial> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Financial> {
  @override
  Widget build(BuildContext context) {
    return const BaseScreen(textocabecalho: 'Financeiro', widgetPage: ListItems());
  }
}