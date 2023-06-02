import 'package:flutter/material.dart';
import 'package:flutter_one/main.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body:  Container(
        child:  Column(
          
          children: [
             Image.asset("images/bgg.jpeg",),
             FittedBox(fit: BoxFit.fill,)
          ]
        )
      )
    );
  }
}
