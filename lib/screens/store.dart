import 'package:flutter/material.dart';
import 'package:veterinariaapp/screens/products.screen.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Tienda - Veterinaria Pérez',style: TextStyle(color: Colors.black),),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Text('Alimentos',style: TextStyle(fontSize: 38),)),
              _category('para perros'),
              _category('para gatos'),
              Center(child: Text('Productos',style: TextStyle(fontSize: 38),)),
              _category('juguetes'),
              _category('collares'),
              _category('comedores'),
            ],
          ),
        ),
      ),
    );
  }
  Widget _category(String name){
    return Container(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.blue)
        ),
        color: Colors.cyan[50],
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen()));},
        child: Text(name,style: TextStyle(fontSize: 24),),
      ),
    );
  }
}