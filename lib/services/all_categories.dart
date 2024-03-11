import 'package:store_app/helper/api.dart';

class All_categories {
  Future<List<dynamic>> Get_All_categories() async {
    List<dynamic> data =
        await Api().get(url: ('https://fakestoreapi.com/products/categories'));

    return data;
  }
}
