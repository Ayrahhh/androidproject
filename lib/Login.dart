import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:houserenting/sigin.dart';


import 'Singleroom.dart';

void main()=>

    runApp(const MaterialApp());
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);



  @override
  State<Login> createState() => _LoginState();

  // startLogin(String username,String password) async {
  //   String apiurl ="customer/login/email/"+username+"/password/"+password;
  //   var response = await http.get(Uri.parse(appurl+apiurl));
  //   if(response.statusCode == 200){
  //     var jsondata = json.decode(response.body);
  //     int id= jsondata["id"];
  //     String email = jsondata["email"];
  //     String password = jsondata["password"];
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (BuildContext context) {
  //       return main();
  //     })
  //     );
  //   }
  // }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
      SliverAppBar(
      // ignore: prefer_const_literals_to_create_immutables
      actions: <Widget>[],
        title: Text(""),
        backgroundColor: Colors.blue,

      ),
      SliverFixedExtentList(
        itemExtent: 80,
        delegate: SliverChildListDelegate([
        Container(
        margin: EdgeInsets.only(
        top: 30,
        ),
        child: const Text(
          "LOGIN HERE",
          style: TextStyle(fontSize: 32, color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(),
        child: Icon(
          Icons.account_circle,
          color: Colors.blue,
          size: 100,
        ),
      ),
      Divider(),
      Container(
        width: 370,
        margin:
        EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
        child: TextField(


          decoration: InputDecoration(
            labelText: "UserName",
            border: OutlineInputBorder(),
            hintText: "Enter UserName",
            prefixIcon: Icon(Icons.person),
          ),
          onChanged: (value){

          },
        ),
      ),
      Container(
        width: 370,
        margin:
        EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
        child: TextField(

          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
            hintText: "Enter Password",
            prefixIcon: Icon(Icons.lock),
          ),


        ),
      ),















          Container(
              height: 50,
              width: 300,
              margin:
              EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)),
              child:RaisedButton(
                  child:const Text("log in"),
                  color:Colors.green,
                  textColor:Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Singleroom()),
                    );

                    child:
                    Text(
                      'log in',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    );
                  }
              ) ),


          Container(
              height: 50,
              width: 300,
              margin:
              EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)),
              child:RaisedButton(
                  child:const Text("sign in"),
                  color:Colors.blue,
                  textColor:Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sigin()),
                    );

                    child:
                    Text(
                      'sign in',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    );
                  }
              ) )
        ]) )

    ]


)
    );



  }
}
