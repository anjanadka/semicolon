import 'package:flutter/material.dart';
import 'package:flutter_app/search.dart';
import './main.dart';

class AdminNotifications extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Track App'),
        actions: <Widget>[
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
          /*Card(
              margin: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const ListTile(
                  title : Text(
                    'Welcome, ',
                    style: Theme.of(context).textTheme.headline6,
                  ))
                ],
              )),*/
          Card(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Raju is tested Covid19 positive'),
                  subtitle: Text('Primary Contacts'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        child: Text('Search'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search()));
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
