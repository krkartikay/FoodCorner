import 'dart:convert';

class ProductData {
  Map<String, dynamic> data;

  ProductData(String json_data){
    data = json.decode(json_data)['data'];
  }
}