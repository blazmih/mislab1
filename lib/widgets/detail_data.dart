import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;
  final String description;
  final int price;

  const DetailData({
    super.key,
    required this.id,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2, color: Colors.black12),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20), // Adds some spacing at the top
          Text(
            "Description:",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description.isNotEmpty
                  ? "${description[0].toUpperCase()}${description.substring(1)}"
                  : "No description available.",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          const Divider(color: Colors.grey),
          Text(
            "Price:",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "\$$price",
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
