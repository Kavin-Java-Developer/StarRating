import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Star Rating'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: starRating(2.5),
        ),
      ),
    );
  }
}

starRating(double digit) {
  int fullStar = digit.floor();
  double halfStar = digit - fullStar;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //fullstar
      for (int i = 0; i < fullStar; i++)
        Icon(
          Icons.star,
          color: Colors.orange,
        ),
      //halfstar
      if (halfStar > 0)
        Icon(
          Icons.star_half,
          color: Colors.orange,
        ),
      //emptystar
      for (int i = fullStar + (halfStar > 0 ? 1 : 0); i < 5; i++)
        Icon(
          Icons.star_border,
          color: Colors.orange,
        ),
    ],
  );
}
