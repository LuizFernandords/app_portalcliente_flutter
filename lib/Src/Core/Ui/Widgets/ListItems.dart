import 'package:flutter/cupertino.dart';
import '../../Constants/colorsapp.dart';
import '../../../Controller/BaseScreen/ListItemsController.dart';
import '../../Constants/screensize.dart';
import 'package:intl/intl.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListItems> {
  ListItemsController cardx = ListItemsController();
  DateTime datetime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    ScreenSize screensize = ScreenSize(context);

    return AnimatedBuilder(
      animation: cardx,
      builder: (context, child) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                    child: Text('Mês/Ano da compra: ${DateFormat('MM').format(datetime)}/${DateFormat('yyyy').format(datetime)}'),
                    onPressed: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (BuildContext context) => Container(
                          height: screensize.heightPercentage(50),
                          width: screensize.widthPercentage(100),
                          color: Color(ColorsApp.colorwhite),
                          child: CupertinoDatePicker(
                            backgroundColor: Color(ColorsApp.colorwhite),
                            initialDateTime: datetime,
                            minimumYear: 2000,
                            maximumDate: datetime,
                            onDateTimeChanged: (DateTime newTime) {
                              setState(() {
                                datetime = newTime;
                              });
                            },
                            use24hFormat: true,
                            mode: CupertinoDatePickerMode.monthYear,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: cardx.listCards(),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Deslize o Card à esquerda e toque em Detalhes para mais informações.',
                    style: TextStyle(
                      color: Color(ColorsApp.colorpurplefinal),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
