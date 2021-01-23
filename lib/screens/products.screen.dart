import 'package:flutter/material.dart';
import 'package:veterinariaapp/screens/cart.store.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tienda - Veterinaria Pérez'),
          actions: [
            IconButton(icon: Icon(Icons.shopping_bag,color: Colors.amber,), onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));})
          ],
        ),
        body: Container(
          
        ),
      ),
    );
  }
}