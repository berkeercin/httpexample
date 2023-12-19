import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({required this.imgUrl, required this.title, Key? key})
      : super(key: key);
  final String imgUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imgUrl,
          height: 150,
          width: 150,
        ),
        Text(title)
      ],
    );
  }
}
