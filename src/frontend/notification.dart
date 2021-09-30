//notification
//there will be one card that showing Someone tested with covid +ve, You are primary contact and pls qurentine yourself

import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Column(
        children: [
          Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Builder(builder: (context) {
                    return const ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Primary Contact'),
                      subtitle: Text(
                          'Raju is tested with Covid-19 positive. You are in the List of Primary Contact people of Raju. Please quarantine yourself for 14 days...'),
                    );
                  }),
                ],
              ))
        ],
      ),
    );
  }
}
