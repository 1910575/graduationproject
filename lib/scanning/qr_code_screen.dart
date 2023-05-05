import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:myguideproject/scanning/result_screen.dart';

const bgColor = Color(0xfffafafa);
class QrCodeScreen extends StatefulWidget {

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  bool isScanCompleted = false;

  get closeScreen => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Scan QR Code',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Place The QR Code inside the Area',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        //fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),

                    Text(
                        'Scanning will be started automatically',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,

                      ),
                    ),
                  ],
                )),
            Expanded(
                flex:4 ,
              child: MobileScanner(
                onDetect: (Capture ){
                  if(!isScanCompleted){
                   String  code =Barcode(rawValue: '') as String;
                   isScanCompleted = true;
                   Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultScreen(
                     closeScreen: closeScreen,
                     code: code ,
                   )
                   )
                   );

                  }
                },
              ),
                ),
            Container(
              decoration: BoxDecoration(
                color: HexColor('063455'),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ) ,
              ),
              width: 400.0,
             alignment: Alignment.center ,
              child:MaterialButton(
                onPressed: (){},
                child: Text(
                  'Scan',
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
                  'Cancel',
                  style: TextStyle(
                    color: HexColor('063455'),
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}