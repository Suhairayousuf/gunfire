import 'package:flutter/material.dart';

import 'login.dart';
class logOut extends StatefulWidget {
  const logOut({Key? key}) : super(key: key);

  @override
  State<logOut> createState() => _logOutState();
}

class _logOutState extends State<logOut> {
  late TextEditingController Username;
  late TextEditingController Email;
  late TextEditingController Password;

  @override
  void initState() {
    super.initState();
    Username = TextEditingController(text: '');
    Email = TextEditingController(text: '');
    Password = TextEditingController(text: '');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Basics()));
        },
        child: Center(
          child: Container(
              height: 45,
              width: 150,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Log out ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              )
          ),
        ),
      ),
    );
  }
}
