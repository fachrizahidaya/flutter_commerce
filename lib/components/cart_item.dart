import 'package:flutter/material.dart';
import 'package:flutter_commerce/models/cart.dart';
import 'package:flutter_commerce/models/coffee.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Coffee coffee;
  CartItem({super.key, required this.coffee});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.coffee.imagePath),
        title: Text(widget.coffee.name),
        subtitle: Text(widget.coffee.price),
        trailing:
            IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
