import 'package:flutter/material.dart';
import 'package:flutter_commerce/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  Coffee coffee;
  void Function()? onTap;
  CoffeeTile({super.key, required this.coffee, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(coffee.imagePath),
        ),
        // Image.asset(coffee.imagePath)],
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            coffee.description,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffee.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('\Rp' + coffee.price,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
