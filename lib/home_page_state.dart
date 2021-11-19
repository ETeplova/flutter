import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

class HomePageState extends State<MyHomePage> {
  late PageController pageController;

  var heroes = ["Captain America", "Black Widow", "Iron Man"];

  var images = ['images/captain.jpg', 'images/widow.jpg', 'images/iron.jpg'];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Column(children: [
                Image.asset('images/logogithub.png'),
                const Text("Choose one hero",
                    style: TextStyle(color: Colors.white, fontSize: 30))
              ]),
              Expanded(
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int position) {
                        return slider(position);
                      }))
            ])));
  }

  slider(int index) {
    return Container(
        child: Center(
            child: Text(heroes[index],
                style: const TextStyle(color: Colors.white, fontSize: 30))),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(images[index]), fit: BoxFit.cover)),
        margin: const EdgeInsets.all(20));
  }
}