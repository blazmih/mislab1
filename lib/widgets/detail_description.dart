import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  final int id;
  final String desc;
  const DetailDescription({super.key, required this.id, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Chip(backgroundColor: Colors.white,
      label: Text("${desc[0].toUpperCase()}${desc.substring(1)}",
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
      avatar: CircleAvatar(
        child: Text(id.toString()),
      ),
    );
  }
}
