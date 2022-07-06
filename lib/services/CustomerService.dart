import 'dart:convert';

import 'package:houserenting/API.dart';
import 'package:http/http.dart'as http;

class CustomerService{
  Future<http.Response> addCustomer(String firstnameController,String lastnameController,  String addressController,String phoneNoController
     ,String passwordController, String countryController, String emailController) async{
    var url=Uri.parse(appurl+'customer/post');
    Map data={
      "firstname":'$firstnameController',
      "lastname":'$lastnameController',
      "address":'$addressController',
      "phoneNo":'$phoneNoController',
      "password":'$passwordController',
      "email":'$emailController',
      "country":'$countryController',

    };
    var body=json.encode(data);
    var response= await http.post(url,headers:{"content-Type":"application/json"},body: body);
    return response;
  }

}