import 'package:flutter/material.dart';
import 'package:statusbar/statusbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

mypress()
{
  print('Stop ringing');
  //Fluttertoast.showToast(msg: null);
  Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
}

myapp()
{

  StatusBar.color(Colors.red.shade500); 

  var url = 'https://shirshadatta.github.io/Flutter-App/sunglasses.png'; 

  var mybody =  Container(
    height: 1000,
    width: 1000,
    alignment: Alignment.bottomCenter,
    child: Column(children: <Widget>[ Text(
      "Hello Summer", 
      style: 
        TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 32,
          fontStyle: FontStyle.italic,),
          ),
          Image.network(
            'https://shirshadatta.github.io/Flutter-App/sunscreen.png'),
          ],), 
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
          url)
        ),
      color: Colors.pink,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(
        width: 10,
        color: Colors.grey.shade500,
        ),
      ),
      );
  
  var  mytext = Text(
    'Hello Sunny',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 40,
      color: Colors.black,
  ));
  
  // ignore: non_constant_identifier_names
  var MyUmbrellaIcon = Icon(
    Icons.beach_access, 
    color: Colors.black,
    size: 45,);

  // ignore: non_constant_identifier_names
  var MyVolume = Icon(Icons.access_alarm, color: Colors.black,size: 45,);

  // ignore: non_constant_identifier_names
  var MyButton = IconButton(
    icon: MyVolume, 
    onPressed: mypress,);

  
  // ignore: non_constant_identifier_names
  var MyAppBar = AppBar(
    title: mytext,
    backgroundColor: Colors.yellow.shade400,
    leading: MyUmbrellaIcon,
    actions: <Widget>[MyButton],);

  var myhome = Scaffold(
    appBar: MyAppBar,
    backgroundColor: Colors.pink.shade200,
    body: Center(child: mybody),
    );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
    );
  return design;

}

