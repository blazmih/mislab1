import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  final int id;
  final int price;
  const DetailPrice({super.key, required this.id, required this.price});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      label: Text(
        "\$$price",
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Text(
          id.toString(),
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}