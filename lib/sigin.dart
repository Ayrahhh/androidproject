import 'package:flutter/material.dart';
import 'package:houserenting/services/CustomerService.dart';

import 'Login.dart';
import 'Singleroom.dart';

void main()=>
    runApp(MaterialApp());
class Sigin extends StatefulWidget {
  const Sigin({Key? key}) : super(key: key);

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  final TextEditingController firstname= TextEditingController();
  final TextEditingController lastname= TextEditingController();
  final TextEditingController address= TextEditingController();
  final TextEditingController phoneNo= TextEditingController();
  final TextEditingController email= TextEditingController();
  final TextEditingController country= TextEditingController();
  final TextEditingController password= TextEditingController();
  CustomerService _customerService = new CustomerService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:ListView(padding:const EdgeInsets.only(
              top: 65,left: 12.0, right:12.0, bottom:12.0),
            children: [
              Container(
                height: 50,
                child: TextField(
                  controller: firstname,
                  decoration: InputDecoration(
                    labelText: 'firstname',
                    hintText: 'firstname',
                    icon: new Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: TextField(
                  controller: lastname,
                  decoration: InputDecoration(
                    labelText: 'lastname',
                    hintText: 'lastname',
                    icon: new Icon(Icons.person),

                  ),
                ),
              ),
              Container(
                height: 50,
                child: TextField(
                  controller: address,
                  decoration: InputDecoration(
                    labelText: 'address',
                    hintText: 'address',
                    icon: new Icon(Icons.person),

                  ),
                ),
              ),



              Container(
                height: 50,
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: 'email',
                    hintText: 'email',
                    icon: new Icon(Icons.email),

                  ),
                ),
              ),

              Container(
                height: 50,
                child: TextField(
                  controller: country,
                  decoration: InputDecoration(
                    labelText: 'country',
                    hintText: 'country',
                    icon: new Icon(Icons.lock),

                  ),
                ),
              ),
              Padding(padding: new EdgeInsets.only(top: 44.0),
              ),
              Container(
                height: 50,
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'password',
                    icon: new Icon(Icons.lock),

                  ),
                ),
              ),
              Padding(padding: new EdgeInsets.only(top: 44.0),
              ),

              Container(
                height:50,
                  child:RaisedButton(
                    onPressed:(){
                      _customerService.addCustomer(firstname.text.trim(), lastname.text.trim(), address.text.trim(), phoneNo.text.trim(), password.text.trim(), country.text.trim(), email.text.trim());
                    Navigator.pop(context,true);
                    },


                      color:Colors.blue,
                      child:Text('add',style: TextStyle(
                        color: Colors.white,backgroundColor: Colors.blue,
                      )),),),
                     ], )
      ),

                        );

                        child:
                        Text(
                          'sign in',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        );
                      }

}

// "firstname":'$firstnameController',
// "lastname":'$lastnameController',
// "phoneNo":'$phoneNoController',
// "password":'$passwordController',
// "email":'$emailController',
// "country":'$countryController',

























class Customerservice {
  static void addCustomer(String trim, String trim2, String trim3, String trim4, String trim5, String trim6, String trim7) {}
}

