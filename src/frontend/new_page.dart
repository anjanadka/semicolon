import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import './notification.dart';

class NewPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Track App'),
        actions: <Widget>[
          Container(
            child: ElevatedButton(
              child: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Text('Logout '),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.live_help),
                  title: Text('Are you tested Covid19 Positive ? '),
                  subtitle: Text('Please Report Here...'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Report')),
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.coronavirus_outlined),
                              Text(
                                ' Most common symptoms:',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Fever'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Cough'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [Text('Tiredness')],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [Text('Loss of taste or smell')],
                          )
                        ],
                      ))
                ],
              )),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.coronavirus_outlined),
                              Text(
                                ' Less common symptoms:',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Sore throat'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Aches and pains'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [Text('Diarrhoea')],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                  'A rash on skin, or discolouration of fingers or toes')
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [Text('Red or irritated eyes')],
                          )
                        ],
                      ))
                ],
              )),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.coronavirus_outlined),
                              Text(
                                ' Serious symptoms:',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                  'Difficulty breathing or shortness of breath'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Loss of speech or mobility, or confusion'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [Text('Chest pain')],
                          ),
                        ],
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
