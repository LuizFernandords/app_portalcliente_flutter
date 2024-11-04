import 'package:flutter/material.dart';
import '../../Core/Ui/Themes/base_screen.dart';
import '../../Core/Ui/Widgets/ListItems.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Invoices> {
  @override
  Widget build(BuildContext context) {
    return const BaseScreen(textocabecalho: 'Faturas', widgetPage: ListItems());
  }
}