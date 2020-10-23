import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyPage extends StatefulWidget {
  static String routeName = '/emergency-Page';

  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Emergency"),
      ),
      body: Container(
        child: Text(
          "This is an Emergency Page \nIn Case of Emergency please click the button below or call 140",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.phone_in_talk),
        onPressed: () {
          setState(() {
            _makePhoneCall('tel:140');
          });
        },
      ),
    );
  }
}
