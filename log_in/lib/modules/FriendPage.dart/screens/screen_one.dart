import 'package:flutter/material.dart';
import 'package:log_in/config/theme/palette.dart';

import 'package:log_in/modules/FriendPage.dart/ui_components/ListTileWidget.dart';

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
          return ListTileWidget(
              leadingIcon: (Icons.abc),
              subTitle: 'hello world',
              title: friend[index]);
        },
      ),
    );
  }
}
