import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipes'),
      ),
      body: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text('Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.pink,
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 7),
                children: DUMMY_CATEGORIES
                    .map(
                      (catData) => CategoryItem(
                        catData.id,
                        catData.title,
                        catData.color,
                        catData.url,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
    );
  }
}
