import 'dart:convert';

import 'package:flutter_order_maanagement/models/Orders.dart';
import 'package:http/http.dart' as http;

class fetching{
    static Future<List<Order>> getOrders() async {
    try{
      http.Response response = await
      http.get('https://staging.myglobalfair.com/api/v1/orders/all');
      if(response.statusCode == 200){
       // print(response.body);
        Orders orderlistfromjson = ordersFromJson(response.body);
        print(orderlistfromjson.toString());
        //List<Order> list = orderlistfromjson;
       // print(list);
        //return orderlistfromjson;
      } else{
        print('unable to fetch details');
      }

    } catch (e){
      return e;
    }
  }
}