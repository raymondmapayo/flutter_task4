import 'package:flutter/material.dart';
import 'package:mapayo_task4_week4_5/itemlist.dart';
import 'package:mapayo_task4_week4_5/productdetail.dart';

import 'model/items.dart';

class GridViewSample extends StatefulWidget {
  const GridViewSample({Key? key}) : super(key: key);

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  ItemList items = ItemList();
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController soldController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  void navigateToProductDetail(Items item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(item: item),
      ),
    );
  }

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
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Input item title',
                ),
              ),
              TextField(
                controller: soldController,
                decoration: const InputDecoration(
                  hintText: 'Input Sold',
                ),
              ),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(
                  hintText: 'Input Location',
                ),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(
                  hintText: 'Input item Price.',
                ),
              ),
              TextField(
                controller: rateController,
                decoration: const InputDecoration(
                  hintText: 'Input Rate.',
                ),
              ),
              TextField(
                controller: imageController,
                decoration: const InputDecoration(
                  hintText: 'Input Image Path',
                ),
              ),
              TextButton(
                onPressed: () {
                  addItem();
                },
                child: const Text('SAVE'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CANCEL'),
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
      rate: int.tryParse(rateController.text) ?? 0,
      liked: false,
    );

    setState(() {
      items.itemList.add(newItem);
      Navigator.pop(context);
      titleController.clear();
      soldController.clear();
      locationController.clear();
      priceController.clear();
      rateController.clear();
      imageController.clear();
    });
  }

  Widget listCard(Items item) => Card(
        child: GestureDetector(
          onTap: () {
            navigateToProductDetail(item);
          },
          onLongPress: () {
            showDeleteConfirmationDialog(item);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                  height: 150,
                ),
                Text(
                  item.title,
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  '₱${item.price}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ratingSold(item),
                location(item),
                buttons(item),
              ],
            ),
          ),
        ),
      );

  deleteItem(Items item) {
    setState(() {
      items.itemList.remove(item);
    });
  }

  showDeleteConfirmationDialog(Items item) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Delete'),
          content: Text('Are you sure you want to delete ${item.title}?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                deleteItem(item);
                Navigator.pop(context);
              },
              child: Text('DELETE'),
            ),
          ],
        );
      },
    );
  }

  Widget starYellow(int i) => Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) => Icon(
            Icons.star,
            color: index < i ? Colors.yellow : Colors.grey,
            size: 20,
          ),
        ),
      );

  Widget ratingSold(Items item) => Row(
        children: [
          starYellow(item.rate),
          const SizedBox(
            width: 5,
          ),
          Text('${item.sold} Sold')
        ],
      );

  Widget location(Items item) => Row(
        children: [
          Icon(
            Icons.add_location,
            size: 18,
          ),
          Expanded(
            child: Text(
              item.location,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );

  Widget buttonLike(Items item) => TextButton.icon(
        onPressed: () {
          setState(() {
            // Toggle the like status
            item.liked = !item.liked;
          });
        },
        icon: Icon(
          Icons.thumb_up_sharp,
          color: item.liked
              ? Colors.blue
              : Colors.grey, // Change color based on like status
        ),
        label: Text(
          'LIKE',
          style: TextStyle(
            color: item.liked
                ? Colors.blue
                : Colors.grey, // Change text color based on like status
          ),
        ),
      );

  Widget buttons(Items item) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonLike(item),
          buttonAddToCart(item),
        ],
      );

  Widget buttonAddToCart(Items item) => TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.remove_red_eye,
          color: Colors.grey,
        ),
        label: const Text(
          'VIEW',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid of Items'),
        actions: [
          IconButton(
            onPressed: () {
              showAddDialog(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 360,
        ),
        itemCount: items.itemList.length,
        itemBuilder: (BuildContext ctx, index) {
          return listCard(items.itemList[index]);
        },
      ),
    );
  }
}
