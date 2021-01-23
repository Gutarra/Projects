import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  String _meses = 'Seleccione mes';
  String _year = 'Seleccione año';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 15,color: Colors.black26)]
              ),
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  _input('Nombre del propietario'),
                  _input('Numero de tarjeta'),
                  _input('CVV'),
                  _input('Mes y año de expiracion'),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: ()=>Navigator.pop(context), 
                    child: Text('Pagar')
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _input(String name){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: '$name',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}