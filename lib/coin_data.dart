import 'package:http/http.dart 'as http;
import 'dart:convert';
import 'price_screen.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'CBBCC608-B9E2-4C3A-928D-BE81EB4AF267';

class CoinData {

  Future getBitCoinData(String selectedCurrency) async {
    http.Response response = await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/BTC/${selectedCurrency}?apikey=CBBCC608-B9E2-4C3A-928D-BE81EB4AF267'));
    if (response.statusCode==200){
      var price=jsonDecode(response.body)['rate'];
      return price;
    }else{
      return response.statusCode;
    }
  }
  Future getEthCoinData(String selectedCurrency) async {
    http.Response response = await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/ETH/${selectedCurrency}?apikey=CBBCC608-B9E2-4C3A-928D-BE81EB4AF267'));
    if (response.statusCode==200){
      var price=jsonDecode(response.body)['rate'];
      return price;
    }else{
      return response.statusCode;
    }
  }
  Future getLteCoinData(String selectedCurrency) async {
    http.Response response = await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/LTC/${selectedCurrency}?apikey=CBBCC608-B9E2-4C3A-928D-BE81EB4AF267'));
    if (response.statusCode==200){
      var price=jsonDecode(response.body)['rate'];
      return price;
    }else{
      return response.statusCode;
    }
  }
}

