import 'package:flutter/material.dart';

class Fruit {
  final String id;
  final String name;
  final Image image;

  Fruit({required this.id, required this.name, required this.image});

  @override
  List<Object?> get props => [id, name, image];

  static List<Fruit> Fruits = [
    Fruit(id: "0", name: "Orange", image: Image.asset("images/orange.png")),
    Fruit(id: "1", name: "banana", image: Image.asset("images/banana.png")),
  ];
}
