import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid Track App'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Raju is tested Covid19 positive'),
                  subtitle: Text('Primary Contacts'),
                ),
                Column(
                  children: [
                    Card(
                        margin: const EdgeInsets.fromLTRB(60, 10, 20, 10),
                        child: Column(
                          children: [
                            Builder(builder: (context) {
                              return const ListTile(
                                leading: Icon(Icons.person),
                                title: Text('Anjali'),
                                subtitle: Text('anjali123@gmail.com'),
                              );
                            }),
                            const ListTile(
                              leading: Icon(Icons.person),
                              title: Text('Anjana'),
                              subtitle: Text('anjana123@gmail.com'),
                            ),
                            const ListTile(
                              leading: Icon(Icons.person),
                              title: Text('Sumi'),
                              subtitle: Text('sumi123@gmail.com'),
                            ),
                          ],
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Notify()],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Notify extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Notify> {
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
          child: const Text('Notify')),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(
    color: Colors.deepOrange,
    child: const Text('OK',
        style: TextStyle(
          color: Colors.white,
        )),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Alert"),
    content: const Text("Notification is send to all the primary contact people "),
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
