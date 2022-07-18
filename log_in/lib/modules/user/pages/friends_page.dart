import 'package:flutter/material.dart';
import 'package:log_in/config/theme/palette.dart';

class FriendPage extends StatelessWidget {
  FriendPage({Key? key}) : super(key: key);
  List<String> friend = [
    'sojod talaat',
    'saja saleh',
    'shrooq basheer',
    'Ghada saead',
    'marah Ahmad'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            'List View',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: AppbarColor),
      body: ListView.builder(
        itemCount: friend.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.abc),
            title: Text(friend[index]),
            subtitle: Text('hello worlds'),
          );
        },
      ),
    );
  }
}
