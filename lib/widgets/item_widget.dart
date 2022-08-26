import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String decs;
  const ItemWidget({Key? key, required this.image, required this.name, required this.decs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.solid)
      ),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(image, height: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    Text(decs)
                  ],
                )
              ],
            ),
            const Icon(Icons.add_shopping_cart),
          ],
      ),
    );
  }
}
