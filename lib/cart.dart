import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;
  const CartPage({Key? key, required this.cartItems}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,

        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          title: Text('My Cart',style:  GoogleFonts.adamina(
            color: Colors.white,),
        ),),
        body: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cartItems[index]['name'],
                  style: const TextStyle(fontSize: 25, color: Colors.white70)),
                subtitle: Text(
                    'Price: \$${cartItems[index]['price'].toStringAsFixed(2)},'
                        ' Quantity: ${cartItems[index]['quantity']}',
              style: const TextStyle(fontSize: 20, color: Colors.white70),
              ));
            },
        ),);
  }
}