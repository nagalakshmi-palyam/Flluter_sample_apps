import 'package:cripto_currency_picker/models/coins_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String url = "https://rest.coinapi.io/v1/exchangerate";
class NetworkHelper {

  Future getCoinData(String selectedCurrency) async{
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String uri = '$url/$crypto/$selectedCurrency/?apikey=$kApiKey';
      http.Response response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double price = decodedData['rate'];
        cryptoPrices[crypto] = price.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }

    return cryptoPrices;
  }

}