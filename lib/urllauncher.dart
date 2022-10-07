//@dart=2.9
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';


// final Uri _url = Uri.parse('https://flutter.dev');
class UrlLauncher extends StatefulWidget {
  const UrlLauncher({Key key}) : super(key: key);

  @override
  State<UrlLauncher> createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  void launchWhatsApp(
      { int phone,
       String message,
      }) async {
    String url() {
      if (Platform.isAndroid) {
        // add the [https]
        return "https://wa.me/$phone/?text=${Uri.parse(message)}"; // new line
      } else {
        // add the [https]
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}"; // new line
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }


  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }
  void initState() {
    super.initState();
    // Check for phone call support.
  }
  @override
  Widget build(BuildContext context) {
    final Uri toLaunch =
    Uri(scheme: 'https', host: 'www.cylog.org', path: 'headers/');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
           child: ElevatedButton(
           onPressed: (){

           //  String _url = "https://whatsapp://call?number=+919656360271";
             String _url = " whatsapp://send?text=MESSAGE&phone=+919188486269";
             void _launchURL() async {
               if (!await launch(_url)) throw 'Could not launch $_url';
             }
             _launchURL();
           },
           child: Text('Show Flutter homepage'),
        ),
        ),

        RaisedButton(
          child: Text("Open Dialer"),
          onPressed: () => _launch('tel:+919952313535'),
        ),
        RaisedButton(

            color: Colors.orange,
            textColor: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            highlightColor: Colors.green,
            onPressed: () {
              launchWhatsApp(phone: 9188486269, message: 'Hello');
            },
            child: Text("Place Your Order",style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 15

            )
            )
        )

      ],
    );
  }
}

