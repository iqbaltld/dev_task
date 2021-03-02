import 'package:dev_task/widgets/card.dart';
import 'package:flutter/material.dart';

class CardsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(height: 230, child: CardWidget(Color(0xff22977a))),
        SizedBox(height: 20),
        Container(height: 230, child: CardWidget(Color(0xffd1af5a))),
      ],
    );
  }
}
