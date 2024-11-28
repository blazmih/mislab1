import 'package:flutter/material.dart';
import 'package:mislab1/models/clothes_model.dart';
import 'package:mislab1/widgets/clothes_cart_data.dart';

class ClothesCard extends StatelessWidget {
  final int id;
  final String image;
  final String name;
  final String description;
  final int price;

  const ClothesCard({super.key, required this.id, required this.name, required this.image,
    required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.pinkAccent[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothes(id: id, name: name, img: image,
          description: description, price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClothesCardData(image: image, name: name, description: description, price: price),
        ),
      ),
    );
  }
}
