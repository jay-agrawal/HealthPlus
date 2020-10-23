import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  static String routeName = "/products-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text('Products Page'),
      ),
    );
  }
}
