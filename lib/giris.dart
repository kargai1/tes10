import 'package:flutter/material.dart';
import 'Page1.dart';

class giris extends StatefulWidget {
  const giris({super.key});

  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool auth(String email, String password) {
    if (email == 'karga' && password == '121314') {
      return true;
    } else {
      return false;
    }
  }

  bool _showError = false;
  bool _showSucs = false;

  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: userIdController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.brown[100],
                  prefixIcon: Icon(Icons.mail_outline),
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: _isObscured,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'password',
                filled: true,
                fillColor: Colors.brown[100],
                prefixIcon: Icon(Icons.key),
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                suffixIcon: IconButton(
                  padding: EdgeInsetsDirectional.only(end: 12),
                  icon: _isObscured
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
                onPressed: () {
                  var valid =
                      auth(userIdController.text, passwordController.text);
                  if (valid) {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page1()));
                    });
                  } else {
                    setState(() {
                      _showError = true;
                    });
                  }
                  ;
                },
                icon: Icon(Icons.login),
                label: Text('login')),
          ),
          _showError
              ? Container(
                  child: Text(
                    'Wrong password or email',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : Container(),
          Container(
            child: ElevatedButton.icon(
                style: ButtonStyle(),
                onPressed: () {},
                icon: Icon(Icons.assignment),
                label: Text('sign up')),
          )
        ],
      ),
    ));
  }
}
