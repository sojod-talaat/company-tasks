import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String title;
  IconData leadingIcon;
  String subTitle;

  // ignore: non_constant_identifier_names
  ListTileWidget(
      {Key? key,
      required this.leadingIcon,
      required this.subTitle,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Icon(leadingIcon),
    );
  }
}
