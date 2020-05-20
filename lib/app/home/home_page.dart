import 'package:flutter/material.dart';
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    //backgroundColor: Colors.white,
                    backgroundImage: Image.asset(
                            'assets/img.png')
                        .image,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hellyson Ferreria',
                    textScaleFactor: 4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '🎓 Mobile Developer • Flutter • Dart 🎓',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        icon: SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/github.png'),
                        ),
                        label: Text('Github'),
                        onPressed: () => html.window
                            .open('https://github.com/Hellyson-Ferreira','hellyson'),
                      ),
                      FlatButton.icon(
                        icon: SizedBox(
                            width: 40,
                          height: 40,
                          child: Image.asset('assets/telegram.png'),
                        ),
                        label: Text('Telegran'),
                        onPressed: () => html.window
                            .open('https://t.me/hellysonFerreira','hellyson'),

                      ),
                      FlatButton.icon(
                        icon: SizedBox(
                            width: 40,
                          height: 40,
                          child: Image.asset('assets/discord.png'),
                        ),
                        label: Text('Discord'),
                        onPressed: () => html.window
                            .open('https://discord.gg/uHvj8J','hellyson'),
                      ),
                     
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        icon: SizedBox(
                              width: 40,
                          height: 40,
                            child: Image.asset('assets/instagram.png'),),
                        label: Text('Instagram'),
                        onPressed:()=> html.window.open('https://www.instagram.com/__hellysonferreira__/','hellyson' ),
                      ),FlatButton.icon(
                        icon: SizedBox(
                              width: 40,
                          height: 40,
                            child: Image.asset('assets/face.webp'),),
                        label: Text('Facebook'),
                        onPressed:()=> html.window.open('https://www.facebook.com/hellyson.grabriel','hellyson' ),
                      ),FlatButton.icon(
                        icon: SizedBox(
                              width: 40,
                          height: 40,
                            child: Image.asset('assets/linkedin.png'),),
                        label: Text('Linkedin'),
                        onPressed:()=> html.window.open('https://www.linkedin.com/in/hellyson-ferreira-380466176/','hellyson' ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
