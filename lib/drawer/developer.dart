import 'package:bmi_calculator_flutter/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  _launchURL(String url) async {
    // const url = 'https://flutter.dev';
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
        title: Center(child: Text('DEVELOPER')),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('images/MyPhoto.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    'Hi! I am Shashank Gupta from Delhi, the Sole Developer of this App and create this App to practise my App Development Skills.',
                    style: kLabelTextStyle.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    'Hope You Guys will like My App!',
                    style: kLabelTextStyle.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  _launchURL("https://github.com/shashankgupta3891");
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedinIn),
                onPressed: () {
                  _launchURL("https://www.linkedin.com/in/shashankgupta3891/");
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {
                  _launchURL(
                      "https://www.facebook.com/people/Shashank-Gupta/100004769506501");
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {
                  _launchURL("https://twitter.com/shashank3891");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
