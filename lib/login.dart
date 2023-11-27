import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu_page.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _State();
}

class _State extends State<LogIn> {
 final TextEditingController _usernameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
 bool _isPasswordVisible = false;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Log In To Your Account',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20.0, color: Colors.white70,)
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 119, 50, 46),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50.0),
            TextField(
                controller:_usernameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText:'UserName',
                    hintStyle: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white38,
                    )
                ),
                style:
                GoogleFonts.dmSerifDisplay(
                  fontSize: 20.0, color: Colors.white,)),
             const SizedBox(height: 40.0),
             TextField(controller:_emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText:'Email',
                  hintStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white38,
                  )
                ),
                style:
                GoogleFonts.dmSerifDisplay(
                  fontSize: 20.0, color: Colors.white,)),
            const SizedBox(height: 40.0,),
            TextField(controller:_passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:const  BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText:'Password',
                    hintStyle: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white38,),
                 suffixIcon: GestureDetector(
                   onTap: () {
                     setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                   });
                   },
                      child: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                       color: Colors.white,
                     ),
                     ),

                  ),
                style:
                GoogleFonts.dmSerifDisplay(
                  fontSize: 20.0, color: Colors.white,)
            ),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              String username=_usernameController.text;
              String email=_emailController.text;
              String password=_passwordController.text;
              Navigator.push(context,MaterialPageRoute(builder: (context)=> MenuPage( username,email,password,),),);
            },
              style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: Colors.white30,
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20), // Padding inside the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
            ),
              child: const Text('Log In'),
            ),
          ],
        ),

      ),
    );
  }
}




