import 'package:flutter/material.dart';
import 'package:flutter2/class/item_class.dart';
import 'package:flutter2/widget/card_widget.dart';

String? text;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        backgroundColor: Colors.lightGreen,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(title: 'Rocket', imagePath: 'images/rocket.png'),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: CardWidget(
                      box: ItemClass(
                          title: 'Space', imagePath: 'images/space.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: CardWidget(
                      box: ItemClass(
                          title: 'Travel', imagePath: 'images/travel.png'),
                    ),
                  ),
                )
              ],
            ),
            CardWidget(
              box: ItemClass(title: 'Yeah', imagePath: 'images/yeah.png'),
            ),
          ],
        ),
      ),
    );
  }
}
