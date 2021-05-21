import 'dart:ui';
import './product_card.dart';
import 'package:flutter/material.dart';
import './product.dart';
import './dummy_data.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildColumn(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Image.asset("assets/osim_logo.png"),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }

  Widget _buildColumn(context) {
    List<Product> _products = dummyData;

    return Column(
      children: <Widget>[
        _buildStatsContainer(context),
        _buildRangeText(context),
        _buildViewResultsButton(context),
        _buildRetakeButton(context),
        Spacer(),
        _buildRecommendContainer(context),
        _buildScrollContainer(_products),
      ],
    );
  }

  Container _buildScrollContainer(List<Product> _products) {
    return Container(
      height: 280,
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 70.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            productName: _products[index].productName,
            imageVal: _products[index].imageVal,
          );
        },
      ),
    );
  }

  Padding _buildRecommendContainer(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            color: Colors.grey[300],
          ),
          child: Text("Here's what we recommend to help you better",
              style: Theme.of(context).textTheme.headline5)),
    );
  }

  TextButton _buildRetakeButton(context) {
    return TextButton(
        onPressed: () {},
        child: Text("Re-Take Blood Pressure",
            style: Theme.of(context).textTheme.bodyText1));
  }

  Padding _buildViewResultsButton(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 15.0),
      child: Container(
        width: double.infinity,
        child: OutlinedButton(
            onPressed: () {},
            child: Text("View Results",
                style: Theme.of(context).textTheme.button)),
      ),
    );
  }

  RichText _buildRangeText(context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2,
        children: <TextSpan>[
          new TextSpan(text: "You are in a"),
          new TextSpan(
            text: " Normal ",
            style: Theme.of(context).textTheme.headline4,
          ),
          new TextSpan(text: "range."),
        ],
      ),
    );
  }

  Container _buildStatsContainer(context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ThemeData().scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3.0, 2.0), //(x,y)
            blurRadius: 7.0,
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          _buildStatsRow(context),
          _buildRowBpm(context),
        ],
      ),
    );
  }

  Padding _buildStatsRow(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSubColumn(context, "Sys (mm Hg)", "118"),
            VerticalDivider(
              width: 80.0,
              thickness: 3.0,
            ),
            _buildSubColumn(context, "Dia (mm Hg)", "64"),
          ],
        ),
      ),
    );
  }

  Column _buildSubColumn(context, String title, String number) {
    return Column(
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.headline1),
        SizedBox(
          height: 3.0,
        ),
        Text(number, style: Theme.of(context).textTheme.headline2),
      ],
    );
  }

  Row _buildRowBpm(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/heartbeat.png"),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline1,
            children: <TextSpan>[
              new TextSpan(text: " / Min :"),
              new TextSpan(
                text: " 70 ",
                style: Theme.of(context).textTheme.headline3,
              ),
              new TextSpan(
                  text: "Bpm", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        // Text(
        //   " / Min:",
        //   style: Theme.of(context).textTheme.headline1,
        // ),
        // SizedBox(width: 10),
        // Text(
        //   "70",
        //   style: Theme.of(context).textTheme.headline3,
        // ),
        // SizedBox(width: 5),
        // Align(
        //   alignment: Alignment.bottomRight,
        //   child: Text(
        //     "Bpm",
        //     style: Theme.of(context).textTheme.bodyText1,
        //   ),
        // )
      ],
    );
  }
}
