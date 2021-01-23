import 'package:flutter/material.dart';
import 'package:veterinariaapp/screens/store.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _pass = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          margin: EdgeInsets.all(30),
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('assets/images/logo.png'),
                  _textField('usuario'),
                  _textField('contraseña'),
                  MaterialButton(
                    padding: EdgeInsets.all(15),
                    color: Colors.blue,
                    onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StoreScreen()));},
                    child: Text('LOGIN',style: TextStyle(color: Colors.white,),),
                  ),
                ],  
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _textField(String name){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: name== 'contraseña'? this._pass: false,
        obscuringCharacter: '•',
        decoration: InputDecoration(
          labelText: '$name',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          suffixIcon: name== 'contraseña'? InkWell(
            onTap: () =>
                setState(() => this._pass = !this._pass),
            child:
                Icon(this._pass ? Icons.remove_red_eye : Icons.cancel_outlined ),
          ): Icon(Icons.person),
        ),
      ),
    );
  }
}