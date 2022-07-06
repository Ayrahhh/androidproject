import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:houserenting/Login.dart';


import 'Singleroom.dart';


void main()=>
    runApp(const MaterialApp());
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: const Icon(Icons.person),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>const Login())
                  );
                }
            )


          ],

          backgroundColor: Colors.green,
         // title:const Text('House renting'),

         // backgroundColor: Colors.lightBlueAccent,

        ),
        body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 85.0),
                child: Text(
                  'HOUSE RENTING',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 27.0),
                ),
              ),

              const SizedBox(height: 30,
                child: Text("Single room",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
              ),


              InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Singleroom()),
                    );

                  },
                  child:Container(
                    height: 270,
                    padding: const EdgeInsets.fromLTRB(30,200,0,0),
                    // child:Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
                    decoration:const BoxDecoration(
                      image:DecorationImage(
                          image:AssetImage("images/room1.jpg",),fit:BoxFit.fitHeight
                      ),
                    ),
                  )
              ),
              const SizedBox(height: 5,),
              Container(
                alignment:Alignment.centerRight,
                height: 40,
                //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
                //color:Colors.red,
                child:RaisedButton(
                  child:const Text("Details"),
                  color:Colors.blue,
                  textColor:Colors.white,
                  onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Singleroom()),
                    );



                  },
                ),
              ),




              const SizedBox(height: 30,
                child: Text("Double room",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
              ),


              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const Singleroom()),
                  );

                },
                child:Container(
                  height: 270,
                  padding: const EdgeInsets.fromLTRB(30,200,0,0),
                  child:const Text("Double room",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
                  decoration:const BoxDecoration(
                    image:const DecorationImage(
                        image:AssetImage("images/room2.jpg",),fit:BoxFit.fitHeight
                    ),
                  ),

                  //
                  // color: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                alignment:Alignment.centerRight,
                height: 40,
                //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
                //color:Colors.red,
                child:RaisedButton(
                  child:const Text("Details"),
                  color:Colors.blue,
                  textColor:Colors.white,
                  onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Singleroom()),
                    );



                  },
                ),
              ),




              const SizedBox(height: 30,
                child: Text("Double room",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
              ),


              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const Singleroom()),
                  );

                },
                child:Container(
                  height: 270,
                  padding: const EdgeInsets.fromLTRB(30,200,0,0),
                  child:const Text("Double room",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
                  decoration:const BoxDecoration(
                    image:DecorationImage(
                        image:AssetImage("images/double.jpg",),fit:BoxFit.fitHeight
                    ),
                  ),

                  //
                  // color: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                alignment:Alignment.centerRight,
                height: 40,
                //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
                //color:Colors.red,
                child:RaisedButton(
                  child:const Text("Details"),
                  color:Colors.blue,
                  textColor:Colors.white,
                  onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Singleroom()),
                    );



                  },
                ),
              ),





            ]
        ));
  }
}


