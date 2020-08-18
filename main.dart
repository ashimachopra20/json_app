import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     myWeb() async {
  var url="http://api.openweathermap.org/data/2.5/forecast?q=jaipur&appid=38e79fe3afd279bd12fefdcdbcda7bac";
  var r= await http.get(url);
  var data=r.body;
  var fdata=jsonDecode(data);
  print(fdata['list'][1]['main']['temp']);
  
}
var src="https://images.unsplash.com/photo-1579003593419-98f949b9398f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60";
 
     return MaterialApp(
       home: Scaffold(
         appBar:AppBar(title:Center(child: Text("WEATHER FORECAST")),backgroundColor: Colors.blueGrey,),
         body: Column(
           children: <Widget>[
            
             Card(child: Image.network(src),),
             Card(child: FlatButton(child: Text('CLICK HERE'),onPressed: myWeb,color: Colors.greenAccent,)),
             // FlatButton(child: Text('CLICK HERE'),onPressed: myWeb,),
           ],
         ),

       ),
       debugShowCheckedModeBanner: false,
       
     );
   }
 }