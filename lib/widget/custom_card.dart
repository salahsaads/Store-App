import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/product.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.data});
  ProductModel data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'update_product_page', arguments: data);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset: Offset(10, 10),
              ),
            ]),
            child: Card(
              //color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data.title.substring(0, 7)}',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${data.price}'),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            bottom: 85,
            child: Image.network(
              data.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
