import 'package:delivery_app/data/example_data.dart';
import 'package:delivery_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 40.0,
              height: 40.0,
              child: Icon(Feather.grid, color: Theme.of(context).primaryColor),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 40.0,
              height: 40.0,
              child: Icon(Feather.shopping_cart,
                  color: kPrimaryLightColor),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 40.0,
              height: 40.0,
              child: Icon(Feather.user, color: kPrimaryLightColor),
            ),
            title: Text(""),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    focusColor: Theme.of(context).accentColor,
                    prefixIcon: Icon(Feather.search, color: kBlackColor),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(12.0),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: kTextColor,
                    ),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30.0))),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: kPrimaryLightColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: GridView.builder(
                    itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final category = categories[index];
                      return Card(
                        elevation: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              width: 1.0,
                              color: kPrimaryLightColor,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                category.imageUrl,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  category.title,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "(${category.count})",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
