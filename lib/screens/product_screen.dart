import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:httpexample/models/product.dart';
import 'package:httpexample/widgets/product_item.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List rawProductList = [];
  List<Product> productList = [];
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    Uri url = Uri.https('dummyjson.com', "products");
    final response = await http.get(url);
    final dataAsJson = json.decode(response.body);
    final List products = dataAsJson['products'];
    for (var element in products) {
      productList.add(
          Product(title: element['title'], thumbnail: element['thumbnail']));
    }
    setState(() {
      rawProductList = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: rawProductList.length,
          itemBuilder: (ctx, index) => ProductItem(
              imgUrl: productList[index].thumbnail,
              title: productList[index].title)),
    );
  }
}
