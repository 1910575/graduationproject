import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myguideproject/scanning/qr_code_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {

   final String code ;
   final Function() closeScreen ;

  const ResultScreen({super.key,required this.closeScreen, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            closeScreen();
            Navigator.pop(context);
          },
          icon:Icon(
          Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        title:  Text(
          'QR Scanner',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            QrImage(data: code,
              size: 150,
              version: QrVersions.auto,
            ),





            Text(
              'Scanned Result',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              code,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width -100,
              height: 48,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('063455'),
              ),
              onPressed: (){},
              child:Text(
              'Copy',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ), )
          ],
        ),
      ),
    );
  }
}
