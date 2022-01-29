import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [_loginBackground(context), _loginBox(context)]),
    );
  }

  Widget _loginBox(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(child: Container(height: 180.0)),
          Container(
            width: size.width * 0.90,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.symmetric(vertical: 25.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.0,
                  offset: Offset(0.0, 5.0)
                )
              ]
            ),
            child: Column(
              children: [
                const Text('Inicio de Sesión', style: TextStyle(fontSize: 18.0)),
                SizedBox(height: 15.0),
                _EmailEntry(),
                SizedBox(height: 15.0),
                _passwordEntry(),
                SizedBox(height: 30.0),
                _loginButton()
              ],
            ),
          ),
          Text('Olvidó su Contraseña?', style: TextStyle(fontSize: 16.0)),
          SizedBox(height: 30.0),
          ElevatedButton(
            child: Text('Registrarse'),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.teal,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 130
              )
            ),
            onPressed: (){}
          ),
          SizedBox(height: 30.0)
        ],
      ),
    );
  }

  Widget _EmailEntry() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.alternate_email_outlined, color: Colors.teal),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electrónico'
        ),
      ),
    );
  }

  Widget _passwordEntry() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon:  Icon(Icons.lock_outline_rounded, color: Colors.teal),
            hintText: 'Introduce tu Contraseña',
            labelText: 'Contraseña'
        ),
      ),
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
        child: Text('Entrar'),
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.teal,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 130
            )
        ),
        onPressed: (){}
    );
  }

  Widget _loginBackground(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final tealBackground = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(0, 150, 136, 1.0),
        Color.fromRGBO(0, 150, 136, 1.0)
      ])),
    );

    return Stack(
      children: [
        tealBackground,
        Container(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: const [
              Icon(Icons.account_balance_wallet_rounded,
                  color: Colors.white, size: 100.0),
              SizedBox(height: 10.0, width: double.infinity),
              Text('Personal Money',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600))
            ],
          ),
        )
      ],
    );
  }
}
