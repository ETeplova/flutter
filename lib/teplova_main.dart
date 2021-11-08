import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

class TeplovaMain extends StatelessWidget {
  const TeplovaMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teplova Flutter first lab',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        backgroundColor: Colors.orange,
      ),
      home: const MyHomePage(title: 'Teplova Flutter first lab'),
    );
  }
}