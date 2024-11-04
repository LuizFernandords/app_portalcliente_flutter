import 'package:flutter/material.dart';
import 'package:portal/Src/Core/Constants/colorsapp.dart';
import 'package:portal/Src/Core/Constants/screensize.dart';

class Indicator extends StatefulWidget {
  final String informacao;
  final String valor;

  const Indicator({
    required this.informacao,
    required this.valor,
    super.key,
  });

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    ScreenSize screen = ScreenSize(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: screen.heightPercentage(20),
              width: screen.widthPercentage(90),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(ColorsApp.colorgrey),
              ),
              padding: const EdgeInsets.all(16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          widget.informacao,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: (constraints.maxHeight * 0.4)
                                .clamp(16.0, 30.0),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: screen.heightPercentage(1)),
                      Flexible(
                        child: Text(
                          widget.valor,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: (constraints.maxHeight * 0.4)
                                .clamp(16.0, 40.0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: screen.heightPercentage(5)),
          ],
        ),
      ),
    );
  }
}
