import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WhoScreen extends StatelessWidget {
  const WhoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
    body: Container(
    child: Padding(
    padding: const EdgeInsets.all(30.0),
    child: SingleChildScrollView(
    child: Column(
    children: [
    Image(
    image:AssetImage('assets/images/who onboarding.png'),
    ),
      Text(
        'Who are you ?',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 150,
      ),
      Container(
          decoration: BoxDecoration(
            color: HexColor('063455'),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ) ,
          ),
          width: 400.0 ,
          child: MaterialButton(
            onPressed: (){},
            child: Text(
            'Blind',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
                ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ) ,
          ),
        width: 400.0 ,
        child: MaterialButton(
            color: Colors.white,
            elevation: 15.0,
            onPressed: (){},
            child: Text(
              'Relative',
              style: TextStyle(
                color: HexColor('063455'),
                fontSize: 20.0,
              ),
            ),





    ),
    ),
      ],
    )
    ),
    ),
    ),
    );
  }
}
