import 'package:flutter/material.dart';
import 'package:mapayo_task4_week4_5/model/items.dart';

class ProductDetailPage extends StatelessWidget {
  final Items item;

  const ProductDetailPage({Key? key, required this.item}) : super(key: key);

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
        onPressed: () {},
        icon: Icon(
          Icons.thumb_up_sharp,
          color: item.liked ? Colors.blue : Colors.grey,
        ),
        label: Text(
          'LIKE',
          style: TextStyle(
            color: item.liked ? Colors.blue : Colors.grey,
          ),
        ),
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
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Larger Image taking up full screen
            Image.asset(
              item.image,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Details
                  Text(
                    item.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('₱${item.price}',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ratingSold(item),
                  location(item),
                  SizedBox(height: 16),
                  // Add any additional details you want to display
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
