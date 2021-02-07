import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text("Container Widget",
            style: TextStyle(
              fontSize: 20,
            fontWeight: FontWeight.bold,


            ),),
        ),

      ),
      body: Center(
        child: Stack(
          children: [
            //Image.network("https://images.all-free-download.com/images/graphicthumb/keukenhof_flower_garden_189143.jpg",),

            Padding(
              padding: const EdgeInsets.only(top:2.0,bottom:320.0,),
              child: Container(

                height: 500,
                width: 500,

                decoration: BoxDecoration(
                 border: Border.all(width: 15,),
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,


                  color: Colors.amberAccent,
                  boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black45, offset: Offset(5,120))],

                ),



                child: Image.network("https://images.all-free-download.com/images/graphicthumb/keukenhof_flower_garden_189143.jpg", fit: BoxFit.fitWidth,),
                //transform: new Matrix4.rotationZ(.165),

              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top:100.0, left: 230,right: 10,),
              child: Image.network("https://o.remove.bg/downloads/6a392f65-3a4c-4f80-916f-733ddcd2910f/Rainbow_lorikeet-removebg-preview.png",height: 250,width: 250,),
            )
            
            


          ],
        ),
      ),

    );
  }
}




