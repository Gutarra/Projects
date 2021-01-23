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
          margin: EdgeInsets.all(10),
          child: GridView.count(
            childAspectRatio:(68/100),
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: [
              _producto(),
              _producto(),
              _producto(),
              _producto(),
              _producto(),
              _producto(),
              _producto(),
              _producto(),
              _producto(),
              _producto(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _producto(){
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 300,
        child: Column(
          children: [
            Image.asset('assets/images/product.png'),
            Text('Nombre del producto',style: TextStyle(fontSize: 19)),
            Text('precio: s/100.00',style: TextStyle(fontSize: 15)),
            Text('Lorem ipsum dolor sit amet consectetur adipiscing elit felis'),
            MaterialButton(
              padding: EdgeInsets.all(15),
              color: Colors.green,
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));},
              child: Text('Comprar',style: TextStyle(color: Colors.white,),),
            ),
          ],
        ),
      ),
    );
  }
}