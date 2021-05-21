import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageVal;
  final String productName;

  ProductCard({this.imageVal, this.productName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(10),
        )),
        child: Padding(
          //padding: EdgeInsets.all(0),
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset(imageVal),
              SizedBox(
                height: 5.0,
              ),
              Text(productName, style: Theme.of(context).textTheme.headline6),
            ],
          ),
        ),
      ),
    );
  }
}
