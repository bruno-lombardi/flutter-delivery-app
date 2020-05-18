import 'package:delivery_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'categories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _navigateToCategories(BuildContext context) {
    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => CategoriesScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: const DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Image.asset("assets/images/logo.png"),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45.0),
                          ),
                          child: Icon(Feather.package),
                        ),
                      ),
                      Text(
                        "Non-Contact Deliveries",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "When placing an order, select the option \"Contactless delivery\" and the courier will leave your order at the door.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: CupertinoButton(
                            color: Theme.of(context).buttonColor,
                            child: Text("Order Now"),
                            onPressed: () {
                              _navigateToCategories(context);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: CupertinoButton(
                            child: Text(
                              "Dismiss",
                              style: TextStyle(
                                color: kTextColor,
                              ),
                            ),
                            onPressed: () {
                              _navigateToCategories(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
