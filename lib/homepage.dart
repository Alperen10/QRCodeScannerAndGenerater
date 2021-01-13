import 'package:flutter/material.dart';
import 'package:qrcode_scanner/generate.dart';
import 'package:qrcode_scanner/scan.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkdtCBP8t9qM07Q5k7xGW3BnQCBnoVpdJ6Jw&usqp=CAU")),
            flatButton("Scan QR CODE", Scan()),
            SizedBox(
              height: 10.0,
            ),
            flatButton("Generate QR CODE", Generate()),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text,Widget widget){
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      child:Text(text),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
      }, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: Colors.blue,width: 3.0),
      ),
    );
  }
}