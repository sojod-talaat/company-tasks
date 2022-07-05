import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in/config/theme/palette.dart';

import '../../../config/constants/assets_paths_constants.dart';
import '../../../config/theme/theme_constants.dart';
import '../ui_components/textForm.dart';

class logIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return logInState();
  }
}

class logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(loginimage),
              fit: BoxFit.cover,
            )),
          ),
          const SizedBox(
            height: sizeBoxheight,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Textfield(
              type: TextInputType.text,
              TextfieldLabel: 'User Name',
              textIcon: Icon(
                Icons.person,
                color: textFieldcolor,
              ),
            ),
          ),
          const SizedBox(
            height: sizeBoxheight,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Textfield(
              type: TextInputType.visiblePassword,
              TextfieldLabel: 'Password ',
              textIcon: const Icon(
                Icons.password_outlined,
                color: textFieldcolor,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 240),
            child: const Text(
              'Forget Password?',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: sizeBoxheight,
          ),
          Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orangeAccent),
                  ),
                  onPressed: () {},
                  child: const Text('Log In'))),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Text('if you dont have account,'),
                InkWell(
                  child: Text(
                    'sing up please',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
