import 'package:flutter/material.dart';
import 'package:personalmoney_new/pages/login_page.dart';

void main() => runApp(PersonalMoneyNew());

class PersonalMoneyNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Money',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login': (BuildContext context) => LoginPage()},
    );
  }
}
