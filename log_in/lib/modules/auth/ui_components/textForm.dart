import 'package:flutter/material.dart';

import '../../../config/theme/palette.dart';

class Textfield extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String TextfieldLabel;
  Icon? textIcon;
  TextInputType? type;

  // ignore: non_constant_identifier_names
  Textfield(
      {Key? key,
      required this.TextfieldLabel,
      required this.textIcon,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: type,
        decoration: InputDecoration(
          hintText: TextfieldLabel,
          prefixIcon: textIcon,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: textFieldcolor, style: BorderStyle.solid)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: textFieldcolor, style: BorderStyle.solid)),
        ));
  }
}
