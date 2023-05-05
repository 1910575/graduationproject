import 'package:flutter/material.dart';

class AudioBook extends StatelessWidget {
  const AudioBook({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                    children: [
                      Text(
                        'Audio Books',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],

                  ),


              ),
            ),
      ),
          );



  }
}
