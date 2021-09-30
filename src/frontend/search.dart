import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Track App'),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
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
                        margin: EdgeInsets.fromLTRB(60, 10, 20, 10),
                        child: Column(
                          children: [
                            const ListTile(
                              leading: Icon(Icons.person),
                              title: Text('Anjana'),
                              subtitle: Text('anjana123@gmail.com'),
                            ),
                            const ListTile(
                              leading: Icon(Icons.person),
                              title: Text('Anjali'),
                              subtitle: Text('anjali123@gmail.com'),
                            ),
                            const ListTile(
                              leading: Icon(Icons.person),
                              title: Text('Affan'),
                              subtitle: Text('affan123@gmail.com'),
                            ),
                          ],
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Notify')),
                    )
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
