/*
Practice Question 1: Responsive Layout using Flexible and Expanded Widgets

Task Description:
Create a Flutter app that has a main screen displaying three horizontal sections using Row, Flexible, and Expanded widgets. The first section, a Flexible widget with a flex factor of 1, should contain a red container. The middle section, an Expanded widget, should have a green container. The third section, a Flexible widget with a flex factor of 2, should contain a blue container.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
              )),
        ],
      )),
    );
  }

  /*
How it works: 

In Flutter, the Expanded widget fills the remaining space after allocating space to Flexible widgets.

In your code, Flexible widgets with flex property are used. The flex factor determines what portion of the total remaining space each Flexible widget should occupy.

Here's how it works in your code:

The red Container is wrapped in a Flexible widget with a flex of 1. This means it will take up 1 share of the available space.

The green Container is wrapped in an Expanded widget, which is essentially a Flexible widget with a flex of 1 and the fit property set to FlexFit.tight. This means it will take up 1 share of the remaining available space after the other Flexible widgets have taken their shares.

The blue Container is wrapped in a Flexible widget with a flex of 2. This means it will take up 2 shares of the available space.

So, in total, you have 4 shares of space (1 from the red, 1 from the green, and 2 from the blue). The red and blue Container widgets will take up their respective shares, and the green Container will fill the remaining space. So, the blue Container will be twice the size of the red Container, and the green Container will take up the remaining space.
   */
}
