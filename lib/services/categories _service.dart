import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product.dart';

class Categories_Service {
  Future<List<ProductModel>> Get_Categories_Service(
      {required String Category_name}) async {
    List<dynamic> data = await Api().get(
        url: ('https://fakestoreapi.com/products/category/$Category_name'));

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
