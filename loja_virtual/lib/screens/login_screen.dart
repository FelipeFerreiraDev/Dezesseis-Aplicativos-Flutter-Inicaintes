import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrar'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Criar Conta',
              style: TextStyle(fontSize: 15.0),
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignUpScreen())
              );
            },
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'E-mail', icon: Icon(Icons.email)),
              keyboardType: TextInputType.emailAddress,
              validator: (text){
                if(text.isEmpty || !text.contains('@')) return 'E-mail Inválido';
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Senha', icon: Icon(Icons.lock)),
              obscureText: true,
              validator: (text){
                if(text.isEmpty || text.length < 6) return 'Senha Inválida';
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Esqueci a senha',
                  textAlign: TextAlign.right,
                ),
                padding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 44.0,
              child: RaisedButton(
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 18.0),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  if(_formKey.currentState.validate()){

                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
