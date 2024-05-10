import 'package:flutter/material.dart';
import 'package:flutter_commerce/models/coffee.dart';

class CartItem extends StatefulWidget {
  Coffee coffee;
  CartItem({super.key, required this.coffee});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.coffee.imagePath),
      title: Text(widget.coffee.name),
      subtitle: Text(widget.coffee.price),
    );
  }
}
