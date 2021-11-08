import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => HomePageState();
}