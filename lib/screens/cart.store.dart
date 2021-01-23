  import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:veterinariaapp/screens/pay.screen.dart';

class CartScreen extends StatefulWidget {
    @override
    CartScreenState createState() => CartScreenState();
  }
  
  class CartScreenState extends State<CartScreen> {
    int _cant = 1;
    double _precio = 50.00;
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Scaffold(
          appBar: AppBar(title: Text('Carrito'),),
          body: Container(
            child: Column(
              children: [
                Image.asset('assets/images/product.png'),
                Text('Nombre del producto',style: TextStyle(fontSize: 19)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('cantidad:',style: TextStyle(fontSize: 19)),
                    NumberPicker.integer(
                      scrollDirection: Axis.horizontal,
                      initialValue: _cant,
                      minValue: 0,
                      maxValue: 100,
                      onChanged: (value) {setState(() {
                        _cant = value;
                      });},
                    ),
                    Text('Precio : ',style: TextStyle(fontSize: 19)),
                    Text((this._cant*this._precio).toString(),style: TextStyle(fontSize: 19)),
                  ],
                ),
                MaterialButton(
                  padding: EdgeInsets.all(15),
                  color: Color(0xff35ac19),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PayScreen()));},
                  child: Text('Pagar',style: TextStyle(color: Colors.white,),),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }