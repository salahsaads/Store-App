import 'package:flutter/material.dart';
import 'package:store_app/screen/home_page.dart';
import 'package:store_app/screen/update_product_page.dart';

void main() {
  runApp(const StorApp());
}

class StorApp extends StatelessWidget {
  const StorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Home': (context) => Home_Page(),
        'update_product_page': (context) {
          return UpdateProductPage();
        }
      },
      initialRoute: 'Home',
    );
  }
}
