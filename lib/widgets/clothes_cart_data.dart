import 'package:flutter/material.dart';

class ClothesCardData extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final int price;

  const ClothesCardData({super.key, required this.name, required this.image,
  required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
        Text(
          "\$$price",
          style: const TextStyle(
            fontSize: 18,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        // Description
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
