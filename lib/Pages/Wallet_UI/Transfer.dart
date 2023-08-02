import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/Wallet_UI/Wallet.dart';
import 'package:share_plus/share_plus.dart';
import 'package:slide_to_act_reborn/slide_to_act_reborn.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:screenshot/screenshot.dart';

import 'Confirm_trans_Page.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});
  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  ScreenshotController screenshotController = ScreenshotController();

  void CaptureImage() {
    _captureAndShareReceipt();
  }

  Future<void> _captureAndShareReceipt() async {
    // Capture the screenshot
    final Uint8List? imageBytes = await screenshotController.capture();

    // Check if the capture was successful
    if (imageBytes != null) {
      // Share the receipt image using the share package

      // Save the image bytes as a file in the device's temporary directory
      final Directory tempDir = await getTemporaryDirectory();
      final File imageFile = File('${tempDir.path}/receipt.png');
      await imageFile.writeAsBytes(imageBytes);

      // Share the receipt image using the share package
      await Share.shareFiles([imageFile.path],
          mimeTypes: ["image/png"],
          subject: "Receipt from My App",
          text: "Here's the receipt for your transaction.");
    } else {
      // Handle the case when screenshot capture failed
      print("Failed to capture screenshot.");
    }
  }

  Widget Receipt(String title, String info) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          Text(
            info,
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Screenshot(
        controller: screenshotController,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Wallet())),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Confirm Transfer",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          body: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Container(
                    width: 90,
                    height: 90,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFFF280),
                      child: Image.asset(
                        'lib/icons/diamond.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ),
                ),
              ),
              // PlaceHolder for the API Call
              Text(
                '-0,701233 BNB',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('=\$224,35'),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: TicketWidget(
                  color: Color(0xffE4E5E8),
                  width: 320,
                  height: 300,
                  isCornerRounded: true,
                  child: Column(
                    children: [
                      Receipt('Asset:', 'Smart Chain (BNB)'),
                      Receipt('From:', 'Main Wallet (bcq1h0...8w6xq)'),
                      Receipt('To:', '0x80c9a...72ad4e1'),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 35.0, left: 25, right: 25),
                        child: DottedLine(
                          dashColor: Colors.grey.shade400,
                        ),
                      ),
                      Receipt('Network:', '0.00105 BNB(\$0.03)'),
                      Receipt('Max Total:', '\$22,8'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12, top: 70),
                child: SlideAction(
                  outerColor: Color(0xff181628),
                  innerColor: Color(0xffCAFED3),
                  sliderButtonIcon: Icon(Icons.done),
                  text: 'Swipe to Confirm',
                  textStyle: TextStyle(color: Colors.grey[500], fontSize: 15),
                  sliderRotate: false,
                  onSubmit: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Con_transfer())),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
