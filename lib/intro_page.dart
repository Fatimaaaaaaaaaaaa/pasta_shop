import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasta_shop/button.dart';
import 'package:pasta_shop/colors.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        const SizedBox(height: 0,),
        Text(
          "PASTA STYLE",
          style: GoogleFonts.dmSerifDisplay(
          fontSize: 28,
          color: Colors.white,
        ),
        ),
          const SizedBox(height: 0,),
        Padding(
          padding: const EdgeInsets.all(20.0),
         child: Image.asset('assets/images/spaghettiIcon.png'),
        ),
          const SizedBox(height: 0,),
        Text(
          "THE TASTE OF ITALIAN FOOD",
          style: GoogleFonts.dmSerifDisplay(
          fontSize: 28,
          color: Colors.white,
        ),
        ),
          const SizedBox(height: 5,),
          Text(
            "Feel the taste of the most popular italian food",
            style: TextStyle(
              // fontSize: 28,
              color: Colors.grey[300],
              height: 2,
            ),
          ),
          const SizedBox(height: 0,),
          MyButton(text: "Log In",
            onTap: (){
              Navigator.pushNamed(context, '/login');
            },),
      ],
      ),
    ),
    );
  }
}
