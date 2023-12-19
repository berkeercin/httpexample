import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {required this.imgUrl,
      required this.title,
      Key? key,
      required this.brand,
      required this.category,
      required this.description,
      required this.discountPercentage,
      required this.images,
      required this.price,
      required this.stock})
      : super(key: key);
  final String brand;
  final String category;
  final String description;
  final double discountPercentage;
  final List images;
  final double price;
  final int stock;
  final String imgUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).primaryColor),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text(title)],
            ),
            SizedBox(
              height: 15,
            ),
            Image.network(
              imgUrl,
              width: 250,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Marka: $brand"),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Fiyatı: $price \$"), Text("Kalan Stok: $stock")],
            )
          ],
        ),
      ),
    );
  }
}
          // id: element["id"],
          // brand: element["brand"],
          // category: element["category"],
          // description: element["description"],
          // discoundPercentage: element["discountPercentage"],
          // images: element["images"],
          // price: element["price"],
          // stock: element["stock"],
          // thumbnail: element["thumbnail"],
          // title: element["title"]));