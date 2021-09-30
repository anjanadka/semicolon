// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import './notification.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid Track App'),
        actions: <Widget>[
          Container(
            child: ElevatedButton(
              child: const Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              child: const Text('Logout '),
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
            margin: const EdgeInsets.all(20.0),
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
                  children: [Report()],
                )
              ],
            ),
          ),
          Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.coronavirus_outlined),
                              Text(
                                ' Most common symptoms:',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Builder(builder: (context) {
                                return const Text('Fever');
                              }),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Builder(builder: (context) {
                                return const Text('Cough');
                              }),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [Text('Tiredness')],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [Text('Loss of taste or smell')],
                          )
                        ],
                      ))
                ],
              )),
          Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.coronavirus_outlined),
                              Text(
                                ' Less common symptoms:',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Text('Sore throat'),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Text('Aches and pains'),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [Text('Diarrhoea')],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Text(
                                  'A rash on skin, or discolouration of fingers or toes')
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [Text('Red or irritated eyes')],
                          )
                        ],
                      ))
                ],
              )),
          Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.coronavirus_outlined),
                              Text(
                                ' Serious symptoms:',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Text(
                                  'Difficulty breathing or shortness of breath'),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Text('Loss of speech or mobility, or confusion'),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [Text('Chest pain')],
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

class Report extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Report> {
  bool _isPressed = false;

  void _myCallback() {
    setState(() {
      _isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('Report')),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    color: Colors.deepOrange,
    child: Text('OK',
        style: TextStyle(
          color: Colors.white,
        )),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("Notification send to Admin "),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
