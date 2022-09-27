import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qtechtask/src/model/product_search_model.dart';

class ApiServices {
  Future<ProductSearchModel> getData() async {
    var url = Uri.parse(
        'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice');
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      ProductSearchModel productSearchModel =
          ProductSearchModel.fromJson(jsonDecode(data));

      print(data);
      return productSearchModel;
    } else {
      throw Exception('Unhandled exception');
    }
  }
}
