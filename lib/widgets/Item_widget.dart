import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      shadowColor: Colors.red,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(
          item.name,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          item.desc,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
