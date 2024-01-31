import 'package:flutter/material.dart';
import 'package:mapayo_task4_week4_5/itemlist.dart';

import 'model/items.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  ItemList items = ItemList();
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController soldController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  showAddDialog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: imageController,
                decoration: const InputDecoration(
                  hintText: 'Input Image path',
                ),
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Input Item Title',
                ),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(
                  hintText: 'Input Item Price',
                ),
              ),
              TextField(
                controller:
                    soldController, // Add a TextEditingController for the "sold" property
                decoration: const InputDecoration(
                  hintText: 'Input Sold',
                ),
              ),
              TextField(
                controller:
                    locationController, // Add a TextEditingController for the "sold" property
                decoration: const InputDecoration(
                  hintText: 'Input Location',
                ),
              ),
              TextField(
                controller:
                    rateController, // Add a TextEditingController for the "sold" property
                decoration: const InputDecoration(
                  hintText: 'Input rate',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  addItem();
                },
                child: const Text('SAVE'),
              ),
            ],
          ),
        );
      },
    );
  }

  addItem() {
    Items newItem = Items(
      image: imageController.text,
      title: titleController.text,
      sold: soldController.text,
      location: locationController.text,
      price: priceController.text,
      rate: int.parse(rateController.text),
      liked: false,
    );
    setState(() {
      items.itemList.add(newItem);
      Navigator.pop(context);
      titleController.clear();
      priceController.clear();
      soldController.clear();
      locationController.clear();
      imageController.clear();
    });
  }

  Widget listTitle(Items item) => ListTile(
        leading: Image.asset(item.image),
        title: Text(item.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Location: ${item.location}'),
            Text('Price: ${item.price}'),
            Text('Sold: ${item.sold}'),
            Text('Rate: ${item.rate}'),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Items'),
        actions: [
          IconButton(
            onPressed: () {
              showAddDialog(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: items.itemList.map((item) {
            return listTitle(item);
          }).toList(),
        ),
      ),
    );
  }
}
