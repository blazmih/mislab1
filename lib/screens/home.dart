import 'package:flutter/material.dart';

import '../models/clothes_model.dart';
import '../widgets/clothes_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothes> clothes = List.generate(6, (index) =>
      Clothes(
        id: index,
        name: "Piece $index",
        img: 'https://i.pinimg.com/564x/09/37/d3/0937d3fc07cc565d841d9b5d4baa9b5a.jpg',
        description: "Description for Piece $index",
        price: (index + 1) * 10,
      ));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent[100],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("213006", style: TextStyle(color: Colors.pink, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothesGrid(clothes: clothes),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add to cart',
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
    );
  }
}
