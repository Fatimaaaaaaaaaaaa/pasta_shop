import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasta_shop/button.dart';
import 'package:pasta_shop/colors.dart';
import 'cart.dart';
import 'food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
   const FoodDetailsPage({super.key,
   required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  List<Map<String,dynamic>> cartItems =[];
  int quantityCount=1;
  void decrementQuantity(){
    setState(() {
      if(quantityCount>1){
      quantityCount--;
      }
    });
  }

  void incrementQuantity(){
    setState(() {
      quantityCount++;
    });
  }
  void _addToCart() {
    setState(() {
      cartItems.add({
        'name': widget.food.name,
        'price': widget.food.price * quantityCount,
        'quantity': quantityCount,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
          actions:[
            IconButton(

            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder:(context)=>CartPage(cartItems:cartItems),

                  ));},
           icon: Icon(Icons.shopping_cart,color: Colors.grey[900]),
            )],),

      body: Column(
       children: [
         Expanded(
             child:
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
           child: ListView(
             children: [
             //image
             Image.asset(widget.food.imagePath,
               height: 200,),
             const SizedBox(height: 25,),
             Row(
               children: [
                 Icon(
                   Icons.star,
                 color: Colors.yellow[800],
                 ),
                 const SizedBox(height: 5,),

                 Text(widget.food.rating, style: TextStyle(
                     color: Colors.grey[600],
                     fontWeight: FontWeight.bold),
                 ),
               ],
             ),
               const SizedBox(height: 10,),
               Text(
                 widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 28),
               ),
               const SizedBox(height: 25,),
               Text('Description', style: TextStyle(
                   color:  Colors.grey[900],
               fontWeight: FontWeight.bold,
               fontSize: 18,),
               ),
               const SizedBox(height: 10,),
               Text('Indulge in the irresistible allure of perfectly cooked pasta, a culinary delight that captivates with its versatility and comforting flavors, sure to satisfy any craving. Elevate your dining experience with the exquisite taste and endless '
                   'possibilities of pasta, a timeless favorite that brings joy to every plate.',
               style: TextStyle(
                 color: Colors.grey[600],
                 fontSize: 14,
                 height: 2,
               ),
               ),
           ],
           ),
         ),
         ),
         Container(
           color: primaryColor,
           padding: const EdgeInsets.all(25),
           child: Column(

             children: [
               Row(
                 mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                 children: [
                   Text("\$${widget.food.price *quantityCount}",
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   Row(
                     children: [
                       Container(
                         decoration: BoxDecoration(
                             color: secondaryColor,
                          shape: BoxShape.circle,
                         ),
                         child: IconButton(
                           icon: const Icon(
                             Icons.remove,
                             color: Colors.white,
                           ),
                           onPressed: decrementQuantity,
                         ),
                       ),
                       SizedBox(
                         width:40,
                         child: Center(
                           child: Text(
                             quantityCount.toString(),
                             style: const TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 18,
                             ),
                           ),
                         ),
                       ),
                       Container(
                         decoration: BoxDecoration(
                           color: secondaryColor,
                           shape: BoxShape.circle,
                         ),
                         child: IconButton(
                           icon: const Icon(
                             Icons.add,
                             color: Colors.white,
                           ),
                           onPressed: incrementQuantity,
                         ),
                       ),
                     ],
                   )

                 ],
               ),
               const SizedBox(height: 20),
               MyButton(
                 text: "Add To Cart", onTap: () { _addToCart(); },
               ),

             ],
           ),
         )
       ],
      ),

    );
  }
}



