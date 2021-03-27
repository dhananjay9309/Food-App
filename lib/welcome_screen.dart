import 'package:flutter/material.dart';

import './screens/categories_screen.dart';

class WelcomeScreen extends StatelessWidget {
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return CategoriesScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange[700], //Theme.of(context).accentColor,
          title: Text('Welcome!')),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Welcome to Our Recipes App \nHere you will find Recipes to Different food items.\nMade by Vrushaket And Dhananjay',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            elevation: 4,
            padding: const EdgeInsets.all(12),
            color: Colors.green[600],
            onPressed: () {
              selectCategory(context);
            },
            child: const Text('Lets Start!',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
