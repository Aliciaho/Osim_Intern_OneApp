import 'package:flutter/material.dart';

class StartMeasurePage extends StatefulWidget {
  @override
  _StartMeasurePageState createState() => _StartMeasurePageState();
}

class _StartMeasurePageState extends State<StartMeasurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(child: _buildColumn(context)),
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
    return Column(
      children: <Widget>[
        _buildStatsContainer(context),
        _buildRowBpm(context),
        _buildDivider(),
        _buildBottomText(context)
      ],
    );
  }

  RichText _buildBottomText(context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText1,
          children: <TextSpan>[
            new TextSpan(text: "Once ready, press"),
            new TextSpan(
              text: " \"On\" ",
              style: Theme.of(context).textTheme.headline1,
            ),
            new TextSpan(text: "button on the \n produce to measure."),
          ],
        ));
  }

  Padding _buildDivider() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Divider(
        thickness: 1.0,
        height: 30.0,
      ),
    );
  }

  Row _buildRowBpm(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/heartbeat.png"),
        RichText(
          textAlign: TextAlign.start,
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
        //     textAlign: TextAlign.end,
        //     style: Theme.of(context).textTheme.bodyText1,
        //   ),
        // )
      ],
    );
  }

  Container _buildStatsContainer(context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 50.0),
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
      child: _buildStatsRow(context),
    );
  }

  Padding _buildStatsRow(context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
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
}
