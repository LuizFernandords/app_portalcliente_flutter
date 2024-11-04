import 'package:flutter/material.dart';
import '../../Core/Ui/Widgets/Details.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final Widget detailsargs = ModalRoute.of(context)!.settings.arguments as Details;
    
    return Scaffold(
      body: detailsargs,
    );
  }
}

//args.tantam