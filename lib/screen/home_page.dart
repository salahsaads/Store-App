import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/services/get_all_product.dart';
import 'package:store_app/widget/custom_card.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffebe4f2),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartPlus))
        ],
        centerTitle: true,
        title: const Text('New Trend'),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
          child: FutureBuilder<List<ProductModel>>(
            future: AllProductServices().getAllProduct(),
            builder: (context, snapshot) {
              List<ProductModel> data = snapshot.data!;
              if (snapshot.hasData) {
                return GridView.builder(
                  itemCount: data.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) => CustomCard(
                    data: data[index],
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.25,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 50),
                );
              } else {
                print(snapshot.hasData);
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
