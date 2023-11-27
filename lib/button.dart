import 'package:flutter/material.dart';
import 'package:pasta_shop/colors.dart';
class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key,
    required this.text,
   required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(40) ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children : [
          Text(
            text,
            style: const TextStyle(color: Colors.white),
      ),
        const SizedBox(width: 15,),
        const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
          ],
        ),
      ),
    );
  }
}