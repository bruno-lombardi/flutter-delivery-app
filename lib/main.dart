import 'package:delivery_app/screens/home.dart';
import 'package:delivery_app/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentScope = FocusScope.of(context);

        if (!currentScope.hasPrimaryFocus) {
          currentScope.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          backgroundColor: kSmokeColor,
          buttonColor: kGreenColor,
        ),
        home: HomePage(),
      ),
    );
  }
}
